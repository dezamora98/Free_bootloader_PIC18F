#include "memory.h"

uint8_t flash_write_B32(void)
{
    uint8_t i;
    uint16_t addr = ReceivedDataBuffer[ADDR_L] | (ReceivedDataBuffer[ADDR_H]<<8);   
    
    if(addr+32 > 0x8000 || addr & 0b11111 ) 
    {   //  si la dirección de escritura supera el 
        //  espacio de memoria o no es múltiplo de 32

        SET_ALL_LED;       // iluminar todos los LEDs
        return 0xFF;     //dirección inválida
    } 

    // cargando dirección base de escritura 
    TBLPTRU = 0;  
    TBLPTRH = ReceivedDataBuffer[ADDR_H];
    TBLPTRL = ReceivedDataBuffer[ADDR_L];
    //-------------------------------------

    for(i = 0; i < 32; ++i)   //cargando laches con posincremento 
    {
        TABLAT = ReceivedDataBuffer[DATA_PACK+i];
        asm ("tblwtpostinc");
    }

    /*Es necesario hacer que el puntero de la tabla apunte a la región que 
    se va a programar antes de iniciar la operación de programación*/
    asm("tblrdpostdec");

    // escribiendo en flash
    EECON1 = 0b10100100;    
    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;
    while(EECON1bits.WR);
    EECON1bits.WREN = 0;
    // -------------------- 

    return TASK;
}

void fuses_write(uint8_t data,uint8_t bit_con)
{
    TBLPTRU = 0x30;    
    TBLPTRH = 0;
    TBLPTRL = bit_con;
    
    INTCONbits.GIE = 0;
    uint8_t i;
    
    TABLAT = data;
    asm("tblwt");
    EECON1 = 0b11000100;
    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;
    while(EECON1bits.WR);
    EECON1bits.WREN = 0;  

    INTCONbits.GIE = 1;
}

void erase_falsh()
{
    uint16_t i;
    uint8_t t_save[4] = {0x7E,0xEF,0x3F,0xF0}; // instrucción de salto al bootloader

    for(i = 0;i<0x6840;i+=64)   // borrado de memoria de usuario
    {
        SET_ALL_LED;
        TBLPTR = i;
        EECON1bits.EEPGD = 1;
        EECON1bits.CFGS = 0;
        EECON1bits.WREN = 1;
        EECON1bits.FREE = 1;

        EECON2 = 0x55;
        EECON2 = 0xAA;

        EECON1bits.WR = 1;
        while(EECON1bits.WR);
        EECON1bits.WREN = 0;
        CLR_ALL_LED;
    }

    TBLPTR = 0; // apuntando a dirección 0

    for(i = 0; i < 32; ++i)   // cargando laches con instrucción de salto al bootloader 
    {
        if (i<4)
        {
           TABLAT = t_save[i];
        }
        else
        {
            TABLAT = 0xFF;
        }   
        asm ("tblwtpostinc");
    }

    // escribiendo en flash instrucción de salto al bootloader
    asm("tblrdpostdec");
    EECON1 = 0b10100100;    
    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;
    while(EECON1bits.WR);
    EECON1bits.WREN = 0; 
    LED_BOOT = 1;
}

void flash_read_byte()
{
    uint8_t i;
    TBLPTR = ReceivedDataBuffer[ADDR_L] | (ReceivedDataBuffer[ADDR_H]<<8);  // obteniendo dirección a leer

    ToSendDataBuffer[ADDR_H] = ReceivedDataBuffer[ADDR_H];  // colocando la dirección(H) de lectura en el buffer
    ToSendDataBuffer[ADDR_L] = ReceivedDataBuffer[ADDR_L];  // colocando la dirección(L) de lectura en el buffer

    for(i=0;i<ReceivedDataBuffer[DATA_PACK];++i) // ciclo de lesctura (desde 0 hasta el numero de bytes)
    {
        asm("TBLRD*+"); // lectura con posincremento
        ToSendDataBuffer[DATA_PACK+i]=TABLAT;   // cargando byte leido en buffer
    }
}

uint8_t EEPROM_reade(uint8_t addr)
{
    EEADR = addr;
    EECON1 = 0b00000001;
    return EEDATA;
}

void EEPROM_write(uint8_t data,uint8_t addr)
{    
    EEADR = addr;
    EEDATA = data;
    EECON1 = 0b00000100;
    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;
    while(!PIR2bits.EEIF);
    PIR2bits.EEIF = 0;
    EECON1bits.WREN = 0;    
}