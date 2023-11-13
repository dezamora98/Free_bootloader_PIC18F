#include <xc.h>
#include "system/system.h"
#include "system/memory.h"

#if 0
#define READ_IN 0x11

uint16_t AC
uint8_t AIN[16] __at(0xFF);

void ADIN(void)
{
    ADCON0 = 0;
    ADCON1 = 0b00010101; // las 10 primeras entradas analógicas y referencia en +Vref GND
    ADCON2 = 0b10000000; // frecuencia del oscilador/2 y lectura de isquierda a derecha
    uint16_t AC = 0b00000001011110111;
    uint8_t i = 0,j = 0;
    while(i<16)
    {
        if(AC & 1<<j)
        {
            ADCON0bits.CHS = j;
            ADCON0bits.ADON = 1;
            ADCON0bits.GO_DONE = 1;
            while (ADCON0bits.GO_DONE); // espera

            AIN[i++] = ADRESL;    //carga de datos
            AIN[i++] = ADRESH;
        }
        ++j;
    }
}

void main(void)
{
    USBDeviceInit();     //  USB init
    uint8_t i;
    while (1)
    {
        HID_rx();
        if(ReceivedDataBuffer[CODE_0] == READ_IN)
        {
            ReceivedDataBuffer[CODE_0] = 0;
            ADIN();
            for (i = 0; i < 16; ++i)
            {
                ToSendDataBuffer[i + DATA_PACK] = AIN[i];
            }
            ToSendDataBuffer[CODE_0] = READ_IN;
            HID_tx();
        }
    }
}
#endif

#if 1
void init_APP(void);
inline void boot(void);

inline void Write_event(void);
inline void Read_event(void);

void main(void)
{
    USBDeviceInit();                            //  iniciando interfaz USB

    TRISB = 0b00011111;                         //  Estableciendo pines de LEDs como salida
    SYS_state = BOOT_MODE;                      //  Estado del sistema en modo boot
    LED_BOOT = 1;                               //  idicador de modo BOOT en 1
    PT0_BOOT = 6;                               //  preparar posescalador para 5 s

    TMR0_1S_config();                           //  configurar TMR0 para disparo cada 1S

    while(SYS_state != APP_MODE)                //  Ciclo de espera de modo aplicación
    {
        if(INTCONbits.TMR0IF == 1)              //  desbordamiento del TMR0?
        {
            if(--PT0_BOOT == 0)                 //  transcurrieton 5 s?
            {
                SYS_state = APP_MODE;           //  Establecer modo aplicación
                INTCONbits.TMR0IF = 0;          //  borrado de bandera de TMR0
                T0CON = 0;                      //  borrado de la configuración del TMR0
            }
            TMR0_1S_config();                   //  
            LED_BOOT = ~LED_BOOT;               //  blinck LED for BOOT_MODE
        }

        USBDeviceTasks();                     
        if(USBGetDeviceState() < CONFIGURED_STATE || USBIsDeviceSuspended()) continue;              //  interfaz USB está lista?
        USBOutHandle = HIDRX_P64;                                                                   //  recibir paquete
        if(ReceivedDataBuffer[CODE_0] == BOOT_MODE && ReceivedDataBuffer[CODE_1] == INIT)      //  orden de modo boot? 
        {
            boot();
        }

    }
    init_APP(); // iniciar aplicación de usuario
}

void init_APP(void)
{
    TMR0_1S_config();                           //  configurar TMR0 para disparo cada 1S
    while(INTCONbits.TMR0IF == 0);              //  espera de 1 segundo
    INTCONbits.TMR0IF = 0;  // limpiando bandera de TMR0
    T0CON = 0;  // registro de configuración del TMR0 a 0

    LATB = 0x00;    //  bits del puerto B en 1
    TRISB = 0xFF;   //  puerto como entrada
    asm("GOTO 0x6800");
}

inline void boot(void)
{                               
    response_event(BOOT_MODE, INIT);           // responder al modo boot

    LED_BOOT = 1;                                   // indicador de modo BOOT en ON 
   
    while(SYS_state == BOOT_MODE)
    {
        HID_rx();                   //  análisis de paquetes entrantes 

        switch (ReceivedDataBuffer[CODE_0])
        {
        case WRITE_MODE:            // modo escritura
            Write_event();
            break;
        case ERASE_MODE:            // modo borrado
            erase_falsh();
            response_event(ERASE_MODE,END);
            break;
        case READ_MODE:             // modo lectura
            Read_event();
            break;
        case APP_MODE:              // modo aplicación 
            SYS_state = APP_MODE;                   
            response_event(APP_MODE, INIT);
        break;
        
        default:
            if(SYS_state == EXCEPTION)    // si se detecta una expresión bloquear el dispositivo 
            {
                SET_ALL_LED;
                while(1);
            }
        break;
        }
        ReceivedDataBuffer[CODE_0]=0;   // borrado del dato analizado en el buffer de recepción 
    }
}

inline void Write_event(void)
{
    uint8_t i;
    response_event(WRITE_MODE, INIT);     // respuesta al host al entrar al modo escritura

    SYS_state = WRITE_MODE;    // estableciendo modo escritura
    SET_ALL_LED;               // encender todos los leds

    while(SYS_state == WRITE_MODE)  // ciclo de escritura en flash
    { 
        HID_rx();       // lectura de buffer
        switch (ReceivedDataBuffer[CODE_1]) 
        {
            case TASK:  // tarea de escritura de paquete entrante
                i = flash_write_B32();  // escritura de paquete de 32 bytes
                response_event(WRITE_MODE, i);  // respuesta a evento de escritura
                NEG_ALL_LED;    // negar leds indicando fin de tarea de escritura
            break;
            
            case END: // fin del modo de escritura
                SYS_state = BOOT_MODE;  // estableciendo modo boot nuevamente
                response_event(WRITE_MODE, END); // respuesta al host
            break;

            default:
            if(ReceivedDataBuffer[CODE_0] == EXCEPTION) 
            {
                // establecer modo excepción si el host lo ha envidado
                SYS_state = EXCEPTION;
            }
            break;
        }
        // borrado de datos analizados del buffer en el ciclo de escritura
        ReceivedDataBuffer[CODE_0]=0; 
        ReceivedDataBuffer[CODE_1]=0;
        //-----------------------------
    }
    CLR_ALL_LED;    // apagar todos los LEDs
    LED_BOOT = 1;   // encender LED indicador del modo BOOT
}

inline void Read_event(void)
{
    uint8_t i;
    response_event(READ_MODE, INIT);     // respuesta al host al entrar al modo lectura

    SYS_state = READ_MODE;    // estableciendo modo escritura
    LED_MONITOR = 1;           // encender LED monitor indicando el modo lectura de flash

    while(SYS_state == READ_MODE)  // ciclo de escritura en flash
    { 
        HID_rx();       // lectura de buffer
        switch (ReceivedDataBuffer[CODE_1]) 
        {
            case TASK:  // tarea de lectura de paquete entrante
                flash_read_byte();  // escritura de paquete de 32 bytes
                response_event(READ_MODE, TASK);  // respuesta a evento de lectura
                NEG_ALL_LED;    // negar leds indicando fin de tarea de lectura
            break;
            
            case END: // fin del modo de escritura
                SYS_state = BOOT_MODE;  // estableciendo modo boot nuevamente
                response_event(READ_MODE, END); // respuesta al host
            break;

            default:
            break;
        }
        // borrado de datos analizados del buffer en el ciclo de escritura
        ReceivedDataBuffer[CODE_0]=0; 
        ReceivedDataBuffer[CODE_1]=0;
        //-----------------------------
    }
    CLR_ALL_LED;    // apagar todos los LEDs
    LED_BOOT = 1;   // encender LED indicador del modo BOOT
}
#endif