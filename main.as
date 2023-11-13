subtitle "Microchip MPLAB XC8 C Compiler v2.32 (Free license) build 20210201212658 Og9 "

pagewidth 120

	opt flic

	processor	18F4550
include "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\18f4550.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 55 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 75 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 152 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 226 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 252 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 259 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 337 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 377 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 433 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 489 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 540 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 591 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 651 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 702 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 766 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 845 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 953 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1061 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1169 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1277 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1385 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1493 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1601 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1709 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1785 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1861 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1937 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2013 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2089 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2165 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2241 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2317 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2456 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2566 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2708 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2829 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2976 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3076 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3188 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3266 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3378 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3430 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3435 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3628 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3633 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3850 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3855 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4004 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4009 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4226 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4231 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4328 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4387 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4471 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4555 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4639 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4710 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4781 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4852 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4918 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4925 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4932 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4939 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4944 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5149 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5154 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5405 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5410 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5417 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5422 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5429 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5434 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5441 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5448 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5569 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5576 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5583 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5590 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5680 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5765 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5770 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5927 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5932 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6065 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6070 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6245 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6309 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6316 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6323 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6330 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6335 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6492 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6499 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6506 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6513 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6584 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6669 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6788 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6795 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6802 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6809 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6871 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6941 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7189 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7196 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7203 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7301 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7306 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7411 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7418 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7521 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7528 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7535 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7542 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7691 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7719 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7724 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7989 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8072 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8142 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8149 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8156 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8163 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8234 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8241 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8248 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8255 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8262 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8269 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8276 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8283 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8290 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8297 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8304 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8311 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8318 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8325 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8332 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8339 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8346 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8353 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8360 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8367 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8374 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8381 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8388 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8395 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8402 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8409 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8416 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8508 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8585 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8702 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8709 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8716 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8723 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8732 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8739 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8746 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8753 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8762 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8769 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8776 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8783 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8790 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8797 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8873 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8880 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8887 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8894 "D:\ProgramFiles\Microchip\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_TMR0_1S_config
	FNCALL	_main,_USBDeviceInit
	FNCALL	_main,_USBDeviceTasks
	FNCALL	_main,_USBTransferOnePacket
	FNCALL	_main,_boot
	FNCALL	_main,_init_APP
	FNCALL	_init_APP,_TMR0_1S_config
	FNCALL	_boot,_HID_rx
	FNCALL	_boot,_Read_event
	FNCALL	_boot,_Write_event
	FNCALL	_boot,_erase_falsh
	FNCALL	_boot,_response_event
	FNCALL	_Write_event,_HID_rx
	FNCALL	_Write_event,_flash_write_B32
	FNCALL	_Write_event,_response_event
	FNCALL	_Read_event,_HID_rx
	FNCALL	_Read_event,_flash_read_byte
	FNCALL	_Read_event,_response_event
	FNROOT	_main
	global	_USBOutHandle
	global	_USBDeviceState
	global	_SYS_state
_SYS_state	set	0x0
	global	_PT0_BOOT
_PT0_BOOT	set	0x1
	global	_ReceivedDataBuffer
_ReceivedDataBuffer	set	0x500
	global	_PORTB
_PORTB	set	0xF81
	global	_LATB
_LATB	set	0xF8A
	global	_UCONbits
_UCONbits	set	0xF6D
	global	_T0CON
_T0CON	set	0xFD5
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_LATBbits
_LATBbits	set	0xF8A
	global	_TRISB
_TRISB	set	0xF93
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config PLLDIV = "4"
	config CPUDIV = "OSC1_PLL2"
	config USBDIV = "2"
	config FOSC = "HSPLL_HS"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRT = "OFF"
	config BOR = "ON"
	config BORV = "3"
	config VREGEN = "ON"
	config WDT = "OFF"
	config WDTPS = "32768"
	config PBADEN = "OFF"
	config LPT1OSC = "OFF"
	config MCLRE = "ON"
	config STVREN = "ON"
	config LVP = "OFF"
	config XINST = "OFF"
	config CP0 = "OFF"
	config CP1 = "OFF"
	config CPB = "OFF"
	config WRT0 = "OFF"
	config WRT1 = "OFF"
	config WRTC = "OFF"
	config WRTB = "OFF"
	config EBTR0 = "OFF"
	config EBTR1 = "OFF"
	config EBTRB = "OFF"
	file	"main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_USBInHandle
_USBInHandle:
       ds      2
	global	_USBOutHandle
_USBOutHandle:
       ds      2
	file	"main.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (4 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_USBDeviceInit:	; 1 bytes @ 0x0
??_USBDeviceInit:	; 1 bytes @ 0x0
?_TMR0_1S_config:	; 1 bytes @ 0x0
??_TMR0_1S_config:	; 1 bytes @ 0x0
?_USBDeviceTasks:	; 1 bytes @ 0x0
??_USBDeviceTasks:	; 1 bytes @ 0x0
??_USBTransferOnePacket:	; 1 bytes @ 0x0
?_boot:	; 1 bytes @ 0x0
?_init_APP:	; 1 bytes @ 0x0
??_init_APP:	; 1 bytes @ 0x0
?_response_event:	; 1 bytes @ 0x0
??_response_event:	; 1 bytes @ 0x0
?_HID_rx:	; 1 bytes @ 0x0
??_HID_rx:	; 1 bytes @ 0x0
?_Write_event:	; 1 bytes @ 0x0
??_Write_event:	; 1 bytes @ 0x0
?_erase_falsh:	; 1 bytes @ 0x0
??_erase_falsh:	; 1 bytes @ 0x0
?_Read_event:	; 1 bytes @ 0x0
??_Read_event:	; 1 bytes @ 0x0
?_flash_write_B32:	; 1 bytes @ 0x0
??_flash_write_B32:	; 1 bytes @ 0x0
?_flash_read_byte:	; 1 bytes @ 0x0
??_flash_read_byte:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_USBTransferOnePacket:	; 2 bytes @ 0x0
	global	_USBTransferOnePacket$1
_USBTransferOnePacket$1:	; 1 bytes @ 0x0
	global	_response_event$1
_response_event$1:	; 1 bytes @ 0x0
	ds   1
	global	Write_event@i
Write_event@i:	; 1 bytes @ 0x1
	global	_USBTransferOnePacket$2
_USBTransferOnePacket$2:	; 2 bytes @ 0x1
	ds   1
??_boot:	; 1 bytes @ 0x2
??_main:	; 1 bytes @ 0x2
	ds   1
	global	_USBTransferOnePacket$3
_USBTransferOnePacket$3:	; 1 bytes @ 0x3
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94      3       7
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    USBTransferOnePacket$2	PTR unsigned char  size(2) Largest target is 0
;!		 -> ReceivedDataBuffer(BIGRAMl[0]), 
;!
;!    USBInHandle	PTR volatile void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    sp__USBTransferOnePacket	PTR void  size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), 
;!
;!    USBOutHandle	PTR volatile void  size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), NULL(NULL[0]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _boot->_Write_event
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0     383
;!                                              2 COMRAM     1     1      0
;!                     _TMR0_1S_config
;!                      _USBDeviceInit
;!                     _USBDeviceTasks
;!               _USBTransferOnePacket
;!                               _boot
;!                           _init_APP
;! ---------------------------------------------------------------------------------
;! (1) _init_APP                                             0     0      0       0
;!                     _TMR0_1S_config
;! ---------------------------------------------------------------------------------
;! (2) _TMR0_1S_config                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _boot                                                 0     0      0     347
;!                             _HID_rx
;!                         _Read_event
;!                        _Write_event
;!                        _erase_falsh
;!                     _response_event
;! ---------------------------------------------------------------------------------
;! (2) _erase_falsh                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Write_event                                          2     2      0     131
;!                                              0 COMRAM     2     2      0
;!                             _HID_rx
;!                    _flash_write_B32
;!                     _response_event
;! ---------------------------------------------------------------------------------
;! (3) _flash_write_B32                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Read_event                                           2     2      0     108
;!                                              0 COMRAM     1     1      0
;!                             _HID_rx
;!                    _flash_read_byte
;!                     _response_event
;! ---------------------------------------------------------------------------------
;! (2) _response_event                                       1     0      1     108
;! ---------------------------------------------------------------------------------
;! (3) _flash_read_byte                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _HID_rx                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _USBTransferOnePacket                                 4     0      4      36
;! ---------------------------------------------------------------------------------
;! (1) _USBDeviceTasks                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _USBDeviceInit                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _TMR0_1S_config
;!   _USBDeviceInit
;!   _USBDeviceTasks
;!   _USBTransferOnePacket
;!   _boot
;!     _HID_rx
;!     _Read_event
;!       _HID_rx
;!       _flash_read_byte
;!       _response_event
;!     _Write_event
;!       _HID_rx
;!       _flash_write_B32
;!       _response_event
;!     _erase_falsh
;!     _response_event
;!   _init_APP
;!     _TMR0_1S_config
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAMl            4FE      0       0      22        0.0%
;!BIGRAMh            300      0       0      21        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E      3       7       1        7.4%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0       7      20        0.0%
;!DATA                 0      0       7       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 63 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclath, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, btemp+8, btemp+9, btemp+10, btemp+11, btemp+12, btemp+13, btemp+14, btemp+15, btemp+16, btemp+17, btemp+18, btemp+19, btemp+20, btemp+21, btemp+22, btemp+23, btemp+24, btemp+25, btemp+26, btemp+27, btemp+28, btemp+29, btemp+30, btemp+31, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_TMR0_1S_config
;;		_USBDeviceInit
;;		_USBDeviceTasks
;;		_USBTransferOnePacket
;;		_boot
;;		_init_APP
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	63
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	63
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	callstack 28
	line	65
	
l1070:
	call	_USBDeviceInit	;wreg free
	line	67
	
l1072:
	movlw	low(01Fh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	68
	
l1074:
	movlw	low(02h)
	movwf	((c:0))^00h,c
	line	69
	
l1076:
	bsf	((c:3978))^0f00h,c,5	;volatile
	line	70
	
l1078:
	movlw	low(06h)
	movwf	((c:1))^00h,c
	line	72
	
l1080:
	call	_TMR0_1S_config	;wreg free
	line	74
	goto	l1106
	
l58:
	line	76
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	u191
	goto	u190
u191:
	goto	l1092
u190:
	line	78
	
l1082:
	decfsz	((c:1))^00h,c
	
	goto	l1088
	line	80
	
l1084:
	movlw	low(01h)
	movwf	((c:0))^00h,c
	line	81
	
l1086:
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	82
	movlw	low(0)
	movwf	((c:4053))^0f00h,c	;volatile
	line	84
	
l1088:
	call	_TMR0_1S_config	;wreg free
	line	85
	
l1090:
	btfsc	((c:3978))^0f00h,c,5	;volatile
	goto	u201
	goto	u200
u201:
	movlw	1
	goto	u206
u200:
	movlw	0
u206:
	xorlw	0ffh
	movwf	(??_main+0+0)^00h,c
	swapf	((??_main+0+0))^00h,c
	rlncf	((??_main+0+0))^00h,c
	movf	((c:3978))^0f00h,c,w	;volatile
	xorwf	((??_main+0+0))^00h,c,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	((??_main+0+0))^00h,c,w
	movwf	((c:3978))^0f00h,c	;volatile
	line	88
	
l1092:
	call	_USBDeviceTasks	;wreg free
	line	89
	
l1094:
	lfsr	2,_USBDeviceState
		movlw	020h-1
	cpfsgt	indf2
	goto	u211
	goto	u210

u211:
	goto	l1106
u210:
	
l1096:
	btfss	((c:3949))^0f00h,c,1	;volatile
	goto	u221
	goto	u220
u221:
	goto	l1098
u220:
	goto	l1106
	line	90
	
l1098:
	movlw	low(0)
	movwf	((c:_USBTransferOnePacket$1))^00h,c
		movlw	low(1280)
	movwf	((c:_USBTransferOnePacket$2))^00h,c
	movlw	high(1280)
	movwf	((c:_USBTransferOnePacket$2+1))^00h,c

	movlw	low(040h)
	movwf	((c:_USBTransferOnePacket$3))^00h,c
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movff	0+?_USBTransferOnePacket,(c:_USBOutHandle)
	movff	1+?_USBTransferOnePacket,(c:_USBOutHandle+1)
	line	91
	
l1100:
	movff	0+(1280+01h),wreg
	xorlw	02h
	btfss	status,2
	goto	u231
	goto	u230
u231:
	goto	l1106
u230:
	
l1102:
	movff	0+(1280+02h),wreg
	xorlw	01h
	btfss	status,2
	goto	u241
	goto	u240
u241:
	goto	l1106
u240:
	line	93
	
l1104:
	call	_boot	;wreg free
	line	74
	
l1106:
		decf	((c:0))^00h,c,w
	btfss	status,2
	goto	u251
	goto	u250

u251:
	goto	l58
u250:
	line	97
	
l1108:
	call	_init_APP	;wreg free
	line	98
	
l66:
	global	start
	goto	start
	callstack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_init_APP

;; *************** function _init_APP *****************
;; Defined at:
;;		line 100 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclath, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, btemp+8, btemp+9, btemp+10, btemp+11, btemp+12, btemp+13, btemp+14, btemp+15, btemp+16, btemp+17, btemp+18, btemp+19, btemp+20, btemp+21, btemp+22, btemp+23, btemp+24, btemp+25, btemp+26, btemp+27, btemp+28, btemp+29, btemp+30, btemp+31, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_TMR0_1S_config
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	100
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	100
	global	__size_of_init_APP
	__size_of_init_APP	equ	__end_of_init_APP-_init_APP
	
_init_APP:
;incstack = 0
	callstack 29
	line	102
	
l942:
	call	_TMR0_1S_config	;wreg free
	line	103
	
l69:
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	u61
	goto	u60
u61:
	goto	l69
u60:
	
l71:
	line	104
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	105
	
l944:
	movlw	low(0)
	movwf	((c:4053))^0f00h,c	;volatile
	line	107
	movlw	low(0)
	movwf	((c:3978))^0f00h,c	;volatile
	line	108
	
l946:
	setf	((c:3987))^0f00h,c	;volatile
	line	109
# 109 "main.c"
GOTO 0x6800 ;# 
psect	text1
	line	110
	
l72:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_APP
	__end_of_init_APP:
	signat	_init_APP,89
	global	_TMR0_1S_config
	global	_boot

;; *************** function _boot *****************
;; Defined at:
;;		line 112 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclath, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, btemp+8, btemp+9, btemp+10, btemp+11, btemp+12, btemp+13, btemp+14, btemp+15, btemp+16, btemp+17, btemp+18, btemp+19, btemp+20, btemp+21, btemp+22, btemp+23, btemp+24, btemp+25, btemp+26, btemp+27, btemp+28, btemp+29, btemp+30, btemp+31, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_HID_rx
;;		_Read_event
;;		_Write_event
;;		_erase_falsh
;;		_response_event
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,inline,group=0
	line	112
global __ptext2
__ptext2:
psect	text2
	file	"main.c"
	line	112
	global	__size_of_boot
	__size_of_boot	equ	__end_of_boot-_boot
	
_boot:
;incstack = 0
	callstack 28
	line	114
	
l1044:
	movlw	low(01h)
	movwf	((c:_response_event$1))^00h,c
	movlw	(02h)&0ffh
	
	call	_response_event
	line	116
	
l1046:
	bsf	((c:3978))^0f00h,c,5	;volatile
	line	118
	goto	l1068
	line	120
	
l1048:
	call	_HID_rx	;wreg free
	line	122
	goto	l1066
	line	125
	
l1050:
	call	_Write_event	;wreg free
	line	126
	goto	l79
	line	128
	
l1052:
	call	_erase_falsh	;wreg free
	line	129
	movlw	low(02h)
	movwf	((c:_response_event$1))^00h,c
	movlw	(07h)&0ffh
	
	call	_response_event
	line	130
	goto	l79
	line	132
	
l1054:
	call	_Read_event	;wreg free
	line	133
	goto	l79
	line	135
	
l1056:
	movlw	low(01h)
	movwf	((c:0))^00h,c
	line	136
	
l1058:
	movlw	low(01h)
	movwf	((c:_response_event$1))^00h,c
	movlw	(01h)&0ffh
	
	call	_response_event
	line	137
	goto	l79
	line	140
	
l1060:
		movlw	8
	xorwf	((c:0))^00h,c,w
	btfss	status,2
	goto	u171
	goto	u170

u171:
	goto	l79
u170:
	line	142
	
l1062:
	movlw	(0E0h)&0ffh
	iorwf	((c:3969))^0f00h,c	;volatile
	line	143
	
l85:
	
l86:
	goto	l85
	line	122
	
l1066:
	lfsr	2,1280+01h
	movf	indf2,w
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l1056
	xorlw	3^1	; case 3
	skipnz
	goto	l1050
	xorlw	4^3	; case 4
	skipnz
	goto	l1054
	xorlw	7^4	; case 7
	skipnz
	goto	l1052
	goto	l1060

	line	146
	
l79:
	line	147
	movlw	low(0)
	movff	wreg,0+(1280+01h)

	line	118
	
l1068:
		movlw	2
	xorwf	((c:0))^00h,c,w
	btfsc	status,2
	goto	u181
	goto	u180

u181:
	goto	l1048
u180:
	line	149
	
l89:
	return	;funcret
	callstack 0
GLOBAL	__end_of_boot
	__end_of_boot:
	signat	_boot,89
	global	_erase_falsh
	global	_Write_event

;; *************** function _Write_event *****************
;; Defined at:
;;		line 151 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclath, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, btemp+8, btemp+9, btemp+10, btemp+11, btemp+12, btemp+13, btemp+14, btemp+15, btemp+16, btemp+17, btemp+18, btemp+19, btemp+20, btemp+21, btemp+22, btemp+23, btemp+24, btemp+25, btemp+26, btemp+27, btemp+28, btemp+29, btemp+30, btemp+31, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_HID_rx
;;		_flash_write_B32
;;		_response_event
;; This function is called by:
;;		_boot
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,inline,group=0
	line	151
global __ptext3
__ptext3:
psect	text3
	file	"main.c"
	line	151
	global	__size_of_Write_event
	__size_of_Write_event	equ	__end_of_Write_event-_Write_event
	
_Write_event:
;incstack = 0
	callstack 28
	line	154
	
l988:
	movlw	low(01h)
	movwf	((c:_response_event$1))^00h,c
	movlw	(03h)&0ffh
	
	call	_response_event
	line	156
	
l990:
	movlw	low(03h)
	movwf	((c:0))^00h,c
	line	157
	
l992:
	movlw	(0E0h)&0ffh
	iorwf	((c:3969))^0f00h,c	;volatile
	line	159
	goto	l1012
	line	161
	
l994:
	call	_HID_rx	;wreg free
	line	162
	goto	l1010
	line	165
	
l996:
	call	_flash_write_B32	;wreg free
	movwf	((c:Write_event@i))^00h,c
	line	166
	movff	(c:Write_event@i),(c:_response_event$1)
	movlw	(03h)&0ffh
	
	call	_response_event
	line	167
	
l998:
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(0E0h)
	xorlw	0ffh
	movwf	(??_Write_event+0+0)^00h,c
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	andwf	((??_Write_event+0+0))^00h,c,w
	movwf	((c:3969))^0f00h,c	;volatile
	line	168
	goto	l96
	line	171
	
l1000:
	movlw	low(02h)
	movwf	((c:0))^00h,c
	line	172
	
l1002:
	movlw	low(02h)
	movwf	((c:_response_event$1))^00h,c
	movlw	(03h)&0ffh
	
	call	_response_event
	line	173
	goto	l96
	line	176
	
l1004:
	movff	0+(1280+01h),wreg
	xorlw	08h
	btfss	status,2
	goto	u141
	goto	u140
u141:
	goto	l96
u140:
	line	179
	
l1006:
	movlw	low(08h)
	movwf	((c:0))^00h,c
	goto	l96
	line	162
	
l1010:
	lfsr	2,1280+02h
	movf	indf2,w
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 2 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	2^0	; case 2
	skipnz
	goto	l1000
	xorlw	3^2	; case 3
	skipnz
	goto	l996
	goto	l1004

	line	182
	
l96:
	line	184
	movlw	low(0)
	movff	wreg,0+(1280+01h)

	line	185
	movlw	low(0)
	movff	wreg,0+(1280+02h)

	line	159
	
l1012:
		movlw	3
	xorwf	((c:0))^00h,c,w
	btfsc	status,2
	goto	u151
	goto	u150

u151:
	goto	l994
u150:
	line	188
	
l1014:
	movlw	(01Fh)&0ffh
	andwf	((c:3969))^0f00h,c	;volatile
	line	189
	
l1016:
	bsf	((c:3978))^0f00h,c,5	;volatile
	line	190
	
l101:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Write_event
	__end_of_Write_event:
	signat	_Write_event,89
	global	_flash_write_B32
	global	_Read_event

;; *************** function _Read_event *****************
;; Defined at:
;;		line 192 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclath, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, btemp+8, btemp+9, btemp+10, btemp+11, btemp+12, btemp+13, btemp+14, btemp+15, btemp+16, btemp+17, btemp+18, btemp+19, btemp+20, btemp+21, btemp+22, btemp+23, btemp+24, btemp+25, btemp+26, btemp+27, btemp+28, btemp+29, btemp+30, btemp+31, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_HID_rx
;;		_flash_read_byte
;;		_response_event
;; This function is called by:
;;		_boot
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,inline,group=0
	line	192
global __ptext4
__ptext4:
psect	text4
	file	"main.c"
	line	192
	global	__size_of_Read_event
	__size_of_Read_event	equ	__end_of_Read_event-_Read_event
	
_Read_event:
;incstack = 0
	callstack 28
	line	195
	
l1018:
	movlw	low(01h)
	movwf	((c:_response_event$1))^00h,c
	movlw	(04h)&0ffh
	
	call	_response_event
	line	197
	
l1020:
	movlw	low(04h)
	movwf	((c:0))^00h,c
	line	198
	
l1022:
	bsf	((c:3978))^0f00h,c,6	;volatile
	line	200
	goto	l1038
	line	202
	
l1024:
	call	_HID_rx	;wreg free
	line	203
	goto	l1036
	line	206
	
l1026:
	call	_flash_read_byte	;wreg free
	line	207
	movlw	low(03h)
	movwf	((c:_response_event$1))^00h,c
	movlw	(04h)&0ffh
	
	call	_response_event
	line	208
	
l1028:
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(0E0h)
	xorlw	0ffh
	movwf	(??_Read_event+0+0)^00h,c
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	andwf	((??_Read_event+0+0))^00h,c,w
	movwf	((c:3969))^0f00h,c	;volatile
	line	209
	goto	l108
	line	212
	
l1030:
	movlw	low(02h)
	movwf	((c:0))^00h,c
	line	213
	
l1032:
	movlw	low(02h)
	movwf	((c:_response_event$1))^00h,c
	movlw	(04h)&0ffh
	
	call	_response_event
	line	214
	goto	l108
	line	203
	
l1036:
	lfsr	2,1280+02h
	movf	indf2,w
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 2 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	2^0	; case 2
	skipnz
	goto	l1030
	xorlw	3^2	; case 3
	skipnz
	goto	l1026
	goto	l108

	line	218
	
l108:
	line	220
	movlw	low(0)
	movff	wreg,0+(1280+01h)

	line	221
	movlw	low(0)
	movff	wreg,0+(1280+02h)

	line	200
	
l1038:
		movlw	4
	xorwf	((c:0))^00h,c,w
	btfsc	status,2
	goto	u161
	goto	u160

u161:
	goto	l1024
u160:
	line	224
	
l1040:
	movlw	(01Fh)&0ffh
	andwf	((c:3969))^0f00h,c	;volatile
	line	225
	
l1042:
	bsf	((c:3978))^0f00h,c,5	;volatile
	line	226
	
l112:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Read_event
	__end_of_Read_event:
	signat	_Read_event,89
	global	_response_event
	global	_flash_read_byte
	global	_HID_rx
	global	_USBTransferOnePacket
	global	_USBDeviceTasks
	global	_USBDeviceInit
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
