#ifndef SYSTEM_H
#define SYSTEM_H

#include <stdbool.h>
#include <stdint.h>
#include <xc.h>
#include "fuses.h"
#include "usb.h"
#include "usb_device_hid.h"
#include "usb_device.h"

//----------CODE_0----------
#define APP_MODE        0x01
#define BOOT_MODE       0x02

#define WRITE_MODE      0x03
#define READ_MODE       0x04

#define MONITOR_MODE    0x05
#define CONTROL_MODE    0x06
#define ERASE_MODE      0x07

#define EXCEPTION       0x08
//--------------------------

//----------CODE_1----------
#define INIT        0x01
#define END         0x02
#define TASK        0x03
//--------------------------

//-----------PACK-----------
#define CODE_0 0x01
#define CODE_1 0x02
#define ADDR_L 0x03
#define ADDR_H 0x04
#define DATA_PACK 0x05
//--------------------------

typedef enum    // estados de la interfaz USB
{
    USB_STATE_USB_START,
    USB_STATE_USB_SUSPEND,
    USB_STATE_USB_RESUME
} USB_STATE;


//buffers de entrada/ salida
#define HID_CUSTOM_OUT_DATA_BUFFER_ADDRESS    __at(0x500)   // dirección del buffer de salida
#define HID_CUSTOM_IN_DATA_BUFFER_ADDRESS     __at(0x540)   // dirección del buffer de entrada
extern uint8_t ReceivedDataBuffer[64] HID_CUSTOM_OUT_DATA_BUFFER_ADDRESS;   // buffer de salida
extern uint8_t ToSendDataBuffer[64] HID_CUSTOM_IN_DATA_BUFFER_ADDRESS;      // buffer de entrada

// macro de llamada a función de recepción
#define HIDRX_P64 (volatile USB_HANDLE)HIDRxPacket(CUSTOM_DEVICE_HID_EP,&ReceivedDataBuffer[0],64)
// macro de llamada a función de transmisión 
#define HIDTX_P64 (volatile USB_HANDLE)HIDTxPacket(CUSTOM_DEVICE_HID_EP,(uint8_t *)&ToSendDataBuffer[0],64)
// punteros de estado USB
volatile USB_HANDLE USBOutHandle;    
volatile USB_HANDLE USBInHandle;
// macros de recepción y transmisión
#define tx 0    
#define rx 1

extern uint8_t SYS_state __at(0x000);   //  variable de estado del sistema
extern uint8_t PT0_BOOT  __at(0x001);   //  posescalador de TMR0 en modo boot

#define LED_BOOT     LATBbits.LATB5     //  LED 1
#define LED_MONITOR  LATBbits.LATB6     //  LED 2
#define LED_CONTROL  LATBbits.LATB7     //  LED 3
#define SET_ALL_LED PORTB |= 0b11100000     // encender todos los leds
#define CLR_ALL_LED PORTB &= 0b00011111     // apagar todos los leds
#define NEG_ALL_LED PORTB =  ~(PORTB & 0b11100000) & (PORTB | 0b11100000)   // invertir estado de todos los leds

inline void HID_tx(void);           // función de transmisión por USB HID
inline void HID_rx(void);           // función de recepción USB HID
void HID_transf(void) __at(0x69FF); // función de transferencia USB HID
void TMR0_1S_config(void);          // configuración de TMR0 para disparo cada 1 s 
void TMR0_100ms_config(void);       // configuración de TMR0 para disparo cada 100 ms
inline void response_event(uint8_t c0, uint8_t c1);     // función de respuesta de evento al host

#endif //SYSTEM_H
