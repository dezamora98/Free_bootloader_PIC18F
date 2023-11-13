#include "system.h"

uint8_t HID_RT_sel __at(0x02);

inline void HID_tx(void) 
{   
    HID_RT_sel = tx;
    HID_transf();
    //asm("CALL _HID_transf");
}
inline void HID_rx(void)
{
    HID_RT_sel = rx;
    HID_transf();
    //asm("CALL _HID_transf");                 
}

void HID_transf(void)
{
    while(1)
    {
        USBDeviceTasks();                     
        if(USBGetDeviceState() < CONFIGURED_STATE || USBIsDeviceSuspended()) continue;              //  usb ready? 
        break;  
    }
    if(HID_RT_sel == tx)
    {
        USBInHandle = HIDTX_P64; 
    } 
    else
    {
        USBOutHandle = HIDRX_P64;
    }
}

void TMR0_1S_config(void)
{
    INTCONbits.TMR0IF = 0;                          //  Reset timer flag
    TMR0L = 0x24;                                   //  1S  config
    TMR0H = 0x72;                                   //  1S  config
    T0CON = 0b10000111;                             //  TMR0 start for 1S
}

inline void response_event(uint8_t c0, uint8_t c1)
{
    ToSendDataBuffer[CODE_0] = c0;                  //  preparing response package
    ToSendDataBuffer[CODE_1] = c1;                  //  preparing response package
    HID_tx();       
}

void TMR0_100ms_config(void)
{
    INTCONbits.TMR0IF = 0;                          //  Reset timer flag
    TMR0L = 0x00;                                   //  100mS  config
    TMR0H = 0xff;                                   //  100mS  config
    T0CON = 0b10000111;                             //  TMR0 start for 1S
}