subtitle "Microchip MPLAB XC8 C Compiler v2.32 (Free license) build 20210201212658 Og9 "

pagewidth 120

	opt flic

	processor	18F4550
include "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\18f4550.cgen.inc"
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
# 55 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 75 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 152 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 252 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 259 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 337 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 377 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 433 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 489 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 540 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 591 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 651 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 766 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 845 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 953 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1061 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1169 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1277 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1385 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1493 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1601 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1785 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1861 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1937 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2013 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2089 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2165 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2317 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2456 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2566 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2708 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2829 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2976 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3076 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3188 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3266 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3378 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3430 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3435 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3628 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3633 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3850 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3855 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4004 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4009 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4231 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4328 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4387 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4471 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4555 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4639 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4710 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4781 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4852 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4918 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4925 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4939 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4944 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5154 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5405 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5410 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5417 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5422 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5429 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5434 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5441 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5448 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5569 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5576 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5583 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5590 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5680 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5765 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5770 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5927 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6065 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6070 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6245 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6309 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6316 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6323 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6330 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6335 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6492 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6499 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6506 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6513 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6584 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6669 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6788 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6795 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6802 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6809 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6871 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6941 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7189 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7196 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7203 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7301 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7306 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7411 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7418 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7521 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7528 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7535 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7542 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7691 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7719 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7724 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7989 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8072 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8142 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8156 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8163 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8234 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8248 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8255 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8262 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8269 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8276 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8283 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8290 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8297 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8304 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8311 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8318 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8325 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8332 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8339 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8346 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8353 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8360 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8367 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8374 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8381 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8388 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8395 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8402 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8409 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8416 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8508 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8585 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8716 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8723 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8732 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8739 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8746 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8753 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8762 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8769 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8776 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8783 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8790 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8797 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8873 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8880 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8887 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8894 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 55 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 75 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 152 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 252 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 259 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 337 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 377 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 433 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 489 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 540 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 591 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 651 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 766 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 845 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 953 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1061 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1169 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1277 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1385 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1493 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1601 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1785 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1861 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1937 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2013 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2089 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2165 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2317 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2456 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2566 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2708 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2829 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2976 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3076 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3188 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3266 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3378 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3430 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3435 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3628 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3633 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3850 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3855 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4004 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4009 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4231 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4328 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4387 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4471 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4555 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4639 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4710 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4781 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4852 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4918 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4925 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4939 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4944 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5154 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5405 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5410 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5417 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5422 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5429 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5434 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5441 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5448 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5569 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5576 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5583 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5590 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5680 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5765 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5770 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5927 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6065 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6070 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6245 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6309 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6316 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6323 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6330 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6335 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6492 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6499 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6506 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6513 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6584 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6669 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6788 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6795 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6802 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6809 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6871 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6941 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7189 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7196 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7203 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7301 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7306 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7411 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7418 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7521 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7528 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7535 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7542 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7691 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7719 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7724 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7989 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8072 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8142 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8156 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8163 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8234 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8248 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8255 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8262 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8269 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8276 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8283 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8290 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8297 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8304 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8311 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8318 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8325 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8332 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8339 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8346 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8353 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8360 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8367 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8374 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8381 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8388 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8395 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8402 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8409 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8416 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8508 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8585 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8716 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8723 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8732 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8739 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8746 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8753 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8762 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8769 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8776 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8783 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8790 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8797 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8873 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8880 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8887 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8894 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 55 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 75 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 152 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 252 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 259 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 337 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 377 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 433 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 489 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 540 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 591 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 651 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 766 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 845 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 953 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1061 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1169 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1277 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1385 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1493 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1601 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1785 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1861 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1937 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2013 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2089 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2165 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2317 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2456 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2566 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2708 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2829 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2976 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3076 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3188 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3266 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3378 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3430 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3435 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3628 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3633 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3850 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3855 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4004 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4009 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4231 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4328 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4387 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4471 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4555 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4639 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4710 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4781 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4852 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4918 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4925 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4939 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4944 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5154 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5405 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5410 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5417 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5422 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5429 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5434 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5441 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5448 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5569 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5576 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5583 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5590 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5680 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5765 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5770 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5927 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6065 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6070 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6245 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6309 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6316 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6323 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6330 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6335 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6492 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6499 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6506 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6513 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6584 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6669 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6788 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6795 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6802 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6809 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6871 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6941 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7189 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7196 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7203 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7301 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7306 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7411 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7418 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7521 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7528 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7535 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7542 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7691 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7719 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7724 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7989 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8072 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8142 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8156 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8163 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8234 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8248 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8255 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8262 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8269 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8276 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8283 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8290 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8297 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8304 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8311 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8318 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8325 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8332 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8339 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8346 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8353 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8360 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8367 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8374 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8381 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8388 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8395 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8402 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8409 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8416 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8508 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8585 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8716 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8723 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8732 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8739 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8746 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8753 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8762 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8769 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8776 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8783 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8790 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8797 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8873 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8880 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8887 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8894 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 55 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 75 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 152 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 252 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 259 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 337 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 377 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 433 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 489 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 540 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 591 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 651 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 766 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 845 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 953 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1061 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1169 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1277 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1385 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1493 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1601 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1785 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1861 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1937 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2013 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2089 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2165 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2317 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2456 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2566 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2708 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2829 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2976 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3076 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3188 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3266 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3378 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3430 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3435 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3628 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3633 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3850 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3855 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4004 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4009 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4231 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4328 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4387 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4471 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4555 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4639 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4710 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4781 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4852 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4918 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4925 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4939 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4944 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5154 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5405 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5410 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5417 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5422 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5429 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5434 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5441 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5448 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5569 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5576 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5583 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5590 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5680 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5765 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5770 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5927 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6065 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6070 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6245 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6309 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6316 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6323 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6330 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6335 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6492 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6499 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6506 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6513 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6584 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6669 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6788 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6795 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6802 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6809 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6871 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6941 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7189 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7196 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7203 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7301 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7306 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7411 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7418 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7521 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7528 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7535 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7542 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7691 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7719 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7724 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7989 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8072 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8142 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8156 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8163 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8234 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8248 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8255 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8262 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8269 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8276 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8283 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8290 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8297 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8304 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8311 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8318 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8325 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8332 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8339 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8346 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8353 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8360 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8367 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8374 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8381 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8388 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8395 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8402 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8409 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8416 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8508 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8585 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8716 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8723 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8732 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8739 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8746 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8753 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8762 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8769 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8776 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8783 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8790 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8797 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8873 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8880 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8887 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8894 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 55 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 75 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 152 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 252 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 259 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 337 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 377 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 433 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 489 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 540 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 591 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 651 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 766 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 845 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 953 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1061 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1169 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1277 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1385 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1493 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1601 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1785 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1861 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1937 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2013 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2089 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2165 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2317 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2456 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2566 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2708 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2829 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2976 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3076 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3188 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3266 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3378 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3430 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3435 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3628 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3633 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3850 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3855 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4004 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4009 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4231 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4328 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4387 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4471 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4555 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4639 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4710 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4781 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4852 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4918 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4925 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4939 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4944 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5154 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5405 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5410 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5417 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5422 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5429 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5434 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5441 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5448 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5569 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5576 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5583 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5590 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5680 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5765 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5770 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5927 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6065 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6070 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6245 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6309 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6316 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6323 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6330 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6335 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6492 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6499 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6506 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6513 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6584 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6669 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6788 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6795 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6802 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6809 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6871 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6941 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7189 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7196 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7203 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7301 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7306 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7411 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7418 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7521 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7528 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7535 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7542 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7691 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7719 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7724 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7989 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8072 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8142 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8156 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8163 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8234 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8248 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8255 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8262 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8269 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8276 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8283 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8290 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8297 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8304 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8311 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8318 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8325 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8332 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8339 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8346 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8353 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8360 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8367 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8374 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8381 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8388 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8395 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8402 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8409 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8416 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8508 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8585 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8716 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8723 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8732 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8739 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8746 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8753 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8762 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8769 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8776 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8783 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8790 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8797 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8873 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8880 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8887 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8894 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 55 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 75 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 152 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 252 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 259 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 337 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 377 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 433 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 489 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 540 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 591 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 651 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 766 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 845 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 953 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1061 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1169 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1277 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1385 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1493 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1601 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1785 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1861 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1937 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2013 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2089 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2165 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2317 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2456 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2566 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2708 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2829 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2976 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3076 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3188 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3266 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3378 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3430 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3435 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3628 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3633 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3850 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3855 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4004 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4009 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4231 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4328 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4387 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4471 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4555 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4639 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4710 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4781 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4852 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4918 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4925 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4939 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4944 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5154 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5405 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5410 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5417 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5422 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5429 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5434 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5441 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5448 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5569 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5576 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5583 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5590 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5680 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5765 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5770 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5927 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6065 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6070 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6245 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6309 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6316 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6323 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6330 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6335 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6492 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6499 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6506 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6513 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6584 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6669 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6788 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6795 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6802 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6809 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6871 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6941 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7189 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7196 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7203 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7301 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7306 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7411 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7418 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7521 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7528 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7535 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7542 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7691 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7719 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7724 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7989 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8072 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8142 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8156 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8163 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8234 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8248 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8255 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8262 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8269 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8276 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8283 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8290 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8297 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8304 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8311 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8318 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8325 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8332 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8339 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8346 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8353 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8360 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8367 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8374 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8381 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8388 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8395 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8402 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8409 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8416 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8508 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8585 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8716 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8723 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8732 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8739 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8746 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8753 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8762 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8769 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8776 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8783 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8790 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8797 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8873 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8880 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8887 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8894 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 55 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 75 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 152 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 252 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 259 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 337 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 377 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 433 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 489 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 540 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 591 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 651 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 766 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 845 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 953 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1061 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1169 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1277 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1385 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1493 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1601 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1785 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1861 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1937 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2013 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2089 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2165 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2317 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2456 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2566 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2708 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2829 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2976 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3076 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3188 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3266 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3378 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3430 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3435 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3628 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3633 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3850 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3855 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4004 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4009 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4226 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4231 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4328 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4387 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4471 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4555 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4639 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4710 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4781 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4852 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4918 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4925 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4939 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4944 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5154 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5405 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5410 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5417 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5422 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5429 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5434 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5441 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5448 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5569 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5576 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5583 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5590 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5680 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5765 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5770 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5927 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5932 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6065 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6070 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6245 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6309 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6316 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6323 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6330 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6335 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6492 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6499 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6506 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6513 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6584 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6669 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6788 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6795 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6802 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6809 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6871 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6941 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7189 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7196 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7203 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7301 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7306 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7411 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7418 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7521 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7528 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7535 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7542 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7691 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7719 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7724 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7989 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8072 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8142 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8149 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8156 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8163 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8234 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8241 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8248 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8255 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8262 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8269 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8276 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8283 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8290 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8297 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8304 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8311 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8318 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8325 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8332 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8339 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8346 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8353 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8360 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8367 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8374 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8381 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8388 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8395 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8402 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8409 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8416 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8508 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8585 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8702 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8709 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8716 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8723 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8732 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8739 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8746 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8753 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8762 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8769 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8776 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8783 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8790 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8797 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8873 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8880 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8887 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8894 "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\include\proc\pic18f4550.h"
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
	FNCALL	_response_event,_HID_tx
	FNCALL	_HID_tx,_HID_transf
	FNCALL	_HID_rx,_HID_transf
	FNCALL	_HID_transf,_USBDeviceTasks
	FNCALL	_HID_transf,_USBTransferOnePacket
	FNCALL	_USBDeviceTasks,_USBCtrlEPAllowStatusStage
	FNCALL	_USBDeviceTasks,_USBCtrlEPService
	FNCALL	_USBDeviceTasks,_USBDeviceInit
	FNCALL	_USBDeviceTasks,_USBIncrement1msInternalTimers
	FNCALL	_USBDeviceTasks,_USBStallHandler
	FNCALL	_USBDeviceTasks,_USBSuspend
	FNCALL	_USBDeviceTasks,_USBWakeFromSuspend
	FNCALL	_USBDeviceTasks,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBWakeFromSuspend,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBSuspend,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBDeviceInit,_memset
	FNCALL	_USBCtrlEPService,_USBCtrlTrfInHandler
	FNCALL	_USBCtrlEPService,_USBCtrlTrfOutHandler
	FNCALL	_USBCtrlEPService,_USBCtrlTrfSetupHandler
	FNCALL	_USBCtrlEPService,_memcpy
	FNCALL	_USBCtrlTrfSetupHandler,_USBCheckStdRequest
	FNCALL	_USBCtrlTrfSetupHandler,_USBCtrlEPServiceComplete
	FNCALL	_USBCtrlTrfSetupHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlEPAllowDataStage
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlEPAllowStatusStage
	FNCALL	_USBCtrlEPAllowDataStage,_USBCtrlTrfTxService
	FNCALL	_USBCheckStdRequest,_USBStdFeatureReqHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetDscHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetStatusHandler
	FNCALL	_USBCheckStdRequest,_USBStdSetCfgHandler
	FNCALL	_USBCheckStdRequest,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBStdSetCfgHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBStdSetCfgHandler,_memset
	FNCALL	_USBStdFeatureReqHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCheckHIDRequest
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBEnableEndpoint
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBTransferOnePacket
	FNCALL	_USBEnableEndpoint,_USBConfigureEndpoint
	FNCALL	_USBCtrlTrfOutHandler,_USBCtrlTrfRxService
	FNCALL	_USBCtrlTrfRxService,_USBCtrlEPAllowStatusStage
	FNCALL	_USBCtrlTrfInHandler,_USBCtrlTrfTxService
	FNROOT	_main
	global	erase_falsh@F3710
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"system/memory.c"
	line	67

;initializer for erase_falsh@F3710
	db	low(07Eh)
	db	low(0EFh)
	db	low(03Fh)
	db	low(0F0h)
	global	_USB_SD_Ptr
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"system/usb_descriptors.c"
	line	123
_USB_SD_Ptr:
		db	low(_sd000)

		db	low(_sd001)

		db	low(_sd002)

	global __end_of_USB_SD_Ptr
__end_of_USB_SD_Ptr:
	global	_USB_CD_Ptr
psect	smallconst
	file	"system/usb_descriptors.c"
	line	117
_USB_CD_Ptr:
		db	low(_configDescriptor1)

	global __end_of_USB_CD_Ptr
__end_of_USB_CD_Ptr:
	global	_sd001
psect	smallconst
	file	"system/usb_descriptors.c"
	line	87
_sd001:
	db	low(034h)
	db	low(03h)
	dw	(043h)&0ffffh
	dw	(055h)&0ffffh
	dw	(04Ah)&0ffffh
	dw	(041h)&0ffffh
	dw	(045h)&0ffffh
	dw	(02Fh)&0ffffh
	dw	(046h)&0ffffh
	dw	(049h)&0ffffh
	dw	(041h)&0ffffh
	dw	(042h)&0ffffh
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	global __end_of_sd001
__end_of_sd001:
	global	_sd002
psect	smallconst
	file	"system/usb_descriptors.c"
	line	92
_sd002:
	db	low(02Eh)
	db	low(03h)
	dw	(041h)&0ffffh
	dw	(075h)&0ffffh
	dw	(074h)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(055h)&0ffffh
	dw	(053h)&0ffffh
	dw	(042h)&0ffffh
	dw	(02Dh)&0ffffh
	dw	(04Bh)&0ffffh
	dw	(049h)&0ffffh
	dw	(054h)&0ffffh
	dw	(020h)&0ffffh
	dw	(076h)&0ffffh
	dw	(036h)&0ffffh
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	global __end_of_sd002
__end_of_sd002:
	global	_configDescriptor1
psect	smallconst
	file	"system/usb_descriptors.c"
	line	33
_configDescriptor1:
	db	low(09h)
	db	low(02h)
	db	low(029h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0C0h)
	db	low(032h)
	db	low(09h)
	db	low(04h)
	db	low(0)
	db	low(0)
	db	low(02h)
	db	low(03h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(09h)
	db	low(021h)
	db	low(011h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(022h)
	db	low(01Dh)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(081h)
	db	low(03h)
	db	low(040h)
	db	low(0)
	db	low(01h)
	db	low(07h)
	db	low(05h)
	db	low(01h)
	db	low(03h)
	db	low(040h)
	db	low(0)
	db	low(01h)
	global __end_of_configDescriptor1
__end_of_configDescriptor1:
	global	_hid_rpt01
psect	smallconst
	file	"system/usb_descriptors.c"
	line	97
_hid_rpt01:
	db	low(06h)
	db	low(0)
	db	low(0FFh)
	db	low(09h)
	db	low(01h)
	db	low(0A1h)
	db	low(01h)
	db	low(019h)
	db	low(01h)
	db	low(029h)
	db	low(040h)
	db	low(015h)
	db	low(0)
	db	low(026h)
	db	low(0FFh)
	db	low(0)
	db	low(075h)
	db	low(08h)
	db	low(095h)
	db	low(040h)
	db	low(081h)
	db	low(0)
	db	low(019h)
	db	low(01h)
	db	low(029h)
	db	low(040h)
	db	low(091h)
	db	low(0)
	db	low(0C0h)
	global __end_of_hid_rpt01
__end_of_hid_rpt01:
	global	_device_dsc
psect	smallconst
	file	"system/usb_descriptors.c"
	line	14
_device_dsc:
	db	low(012h)
	db	low(01h)
	dw	(0200h)&0ffffh
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(08h)
	dw	(04D8h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0100h)&0ffffh
	db	low(01h)
	db	low(02h)
	db	low(0)
	db	low(01h)
	global __end_of_device_dsc
__end_of_device_dsc:
	global	_sd000
psect	smallconst
	file	"system/usb_descriptors.c"
	line	82
_sd000:
	db	low(04h)
	db	low(03h)
	dw	(0409h)&0ffffh
	global __end_of_sd000
__end_of_sd000:
	global	_USB_SD_Ptr
	global	_USB_CD_Ptr
	global	_sd001
	global	_sd002
	global	_configDescriptor1
	global	_hid_rpt01
	global	_device_dsc
	global	_sd000
	global	_outPipes
	global	_inPipes
	global	_pBDTEntryIn
	global	_pBDTEntryOut
	global	_ep_data_out
	global	_ep_data_in
	global	_pDst
	global	_pBDTEntryEP0OutNext
	global	_pBDTEntryEP0OutCurrent
	global	_USBInHandle
	global	_USBOutHandle
	global	_USBTicksSinceSuspendEnd
	global	_USBDeferOUTDataStagePackets
	global	_USBDeferINDataStagePackets
	global	_USBStatusStageEnabledFlag2
	global	_USBStatusStageEnabledFlag1
	global	_USBDeferStatusStagePacket
	global	_USBStatusStageTimeoutCounter
	global	_BothEP0OutUOWNsSet
	global	_endpoint_number
	global	_USBBusIsSuspended
	global	_RemoteWakeup
	global	_controlTransferState
	global	_shortPacketStatus
	global	_USBDeviceState
	global	_active_protocol
	global	_idle_rate
	global	_USTATcopy
	global	_USBAlternateInterface
	global	_USBActiveConfiguration
	global	_USB1msTickCount
	global	_SYS_state
_SYS_state	set	0x0
	global	_HID_RT_sel

	DABS	1,2,1,_HID_RT_sel
	global	_PT0_BOOT
_PT0_BOOT	set	0x1
	global	_BDT

	DABS	1,1024,32,_BDT
	global	_ReceivedDataBuffer
_ReceivedDataBuffer	set	0x500
	global	_TBLPTR
_TBLPTR	set	0xFF6
	global	_UEP0bits
_UEP0bits	set	0xF70
	global	_USTAT
_USTAT	set	0xF6C
	global	_UIEbits
_UIEbits	set	0xF69
	global	_UCON
_UCON	set	0xF6D
	global	_UIRbits
_UIRbits	set	0xF68
	global	_UADDR
_UADDR	set	0xF6E
	global	_UIE
_UIE	set	0xF69
	global	_UEIE
_UEIE	set	0xF6B
	global	_UCFG
_UCFG	set	0xF6F
	global	_UIR
_UIR	set	0xF68
	global	_UEIR
_UEIR	set	0xF6A
	global	_PIE2bits
_PIE2bits	set	0xFA0
	global	_PIR2bits
_PIR2bits	set	0xFA1
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_EECON2
_EECON2	set	0xFA7
	global	_EECON1
_EECON1	set	0xFA6
	global	_TABLAT
_TABLAT	set	0xFF5
	global	_TBLPTRL
_TBLPTRL	set	0xFF6
	global	_TBLPTRH
_TBLPTRH	set	0xFF7
	global	_TBLPTRU
_TBLPTRU	set	0xFF8
	global	_TMR0H
_TMR0H	set	0xFD7
	global	_TMR0L
_TMR0L	set	0xFD6
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
	global	_UEP1
_UEP1	set	0xF71
	global	_UEP0
_UEP0	set	0xF70
	global	_ToSendDataBuffer
_ToSendDataBuffer	set	0x540
	global	_CtrlTrfData

	DABS	1,1064,8,_CtrlTrfData
	global	_SetupPkt

	DABS	1,1056,8,_SetupPkt
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = always
	config default_idlocs  = always
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
	file	"comp\main.s"
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
	global	_outPipes
_outPipes:
       ds      8
	global	_inPipes
_inPipes:
       ds      6
	global	_pBDTEntryIn
_pBDTEntryIn:
       ds      4
	global	_pBDTEntryOut
_pBDTEntryOut:
       ds      4
	global	_ep_data_out
_ep_data_out:
       ds      2
	global	_ep_data_in
_ep_data_in:
       ds      2
	global	_pDst
_pDst:
       ds      2
	global	_pBDTEntryEP0OutNext
_pBDTEntryEP0OutNext:
       ds      2
	global	_pBDTEntryEP0OutCurrent
_pBDTEntryEP0OutCurrent:
       ds      2
	global	_USBInHandle
_USBInHandle:
       ds      2
	global	_USBOutHandle
_USBOutHandle:
       ds      2
	global	_USBTicksSinceSuspendEnd
_USBTicksSinceSuspendEnd:
       ds      1
	global	_USBDeferOUTDataStagePackets
_USBDeferOUTDataStagePackets:
       ds      1
	global	_USBDeferINDataStagePackets
_USBDeferINDataStagePackets:
       ds      1
	global	_USBStatusStageEnabledFlag2
_USBStatusStageEnabledFlag2:
       ds      1
	global	_USBStatusStageEnabledFlag1
_USBStatusStageEnabledFlag1:
       ds      1
	global	_USBDeferStatusStagePacket
_USBDeferStatusStagePacket:
       ds      1
	global	_USBStatusStageTimeoutCounter
_USBStatusStageTimeoutCounter:
       ds      1
	global	_BothEP0OutUOWNsSet
_BothEP0OutUOWNsSet:
       ds      1
	global	_endpoint_number
_endpoint_number:
       ds      1
	global	_USBBusIsSuspended
_USBBusIsSuspended:
       ds      1
	global	_RemoteWakeup
_RemoteWakeup:
       ds      1
	global	_controlTransferState
_controlTransferState:
       ds      1
	global	_shortPacketStatus
_shortPacketStatus:
       ds      1
	global	_USBDeviceState
_USBDeviceState:
       ds      1
_active_protocol:
       ds      1
_idle_rate:
       ds      1
	global	_USTATcopy
_USTATcopy:
       ds      1
	global	_USBAlternateInterface
_USBAlternateInterface:
       ds      1
	global	_USBActiveConfiguration
_USBActiveConfiguration:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
	global	_USB1msTickCount
_USB1msTickCount:
       ds      4
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"system/memory.c"
	line	67
erase_falsh@F3710:
       ds      4
	file	"comp\main.s"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (4 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,4
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
	line	#
; Clear objects allocated to BANK0 (4 bytes)
	global __pbssBANK0
movlb	0
clrf	(__pbssBANK0+3)&0xffh,b
clrf	(__pbssBANK0+2)&0xffh,b
clrf	(__pbssBANK0+1)&0xffh,b
clrf	(__pbssBANK0+0)&0xffh,b
; Clear objects allocated to COMRAM (55 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	55
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
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
?_TMR0_1S_config:	; 1 bytes @ 0x0
??_TMR0_1S_config:	; 1 bytes @ 0x0
?_USBDeviceTasks:	; 1 bytes @ 0x0
?_boot:	; 1 bytes @ 0x0
?_init_APP:	; 1 bytes @ 0x0
??_init_APP:	; 1 bytes @ 0x0
?_HID_rx:	; 1 bytes @ 0x0
?_Write_event:	; 1 bytes @ 0x0
?_erase_falsh:	; 1 bytes @ 0x0
??_erase_falsh:	; 1 bytes @ 0x0
?_Read_event:	; 1 bytes @ 0x0
?_flash_write_B32:	; 1 bytes @ 0x0
??_flash_write_B32:	; 1 bytes @ 0x0
?_flash_read_byte:	; 1 bytes @ 0x0
??_flash_read_byte:	; 1 bytes @ 0x0
?_HID_transf:	; 1 bytes @ 0x0
?_USBWakeFromSuspend:	; 1 bytes @ 0x0
?_USBSuspend:	; 1 bytes @ 0x0
?_USBIncrement1msInternalTimers:	; 1 bytes @ 0x0
??_USBIncrement1msInternalTimers:	; 1 bytes @ 0x0
?_USBCtrlEPAllowStatusStage:	; 1 bytes @ 0x0
??_USBCtrlEPAllowStatusStage:	; 1 bytes @ 0x0
?_USBStallHandler:	; 1 bytes @ 0x0
??_USBStallHandler:	; 1 bytes @ 0x0
?_USBCtrlEPService:	; 1 bytes @ 0x0
?_USBConfigureEndpoint:	; 1 bytes @ 0x0
?_USBCtrlTrfTxService:	; 1 bytes @ 0x0
??_USBCtrlTrfTxService:	; 1 bytes @ 0x0
?_USBCtrlTrfSetupHandler:	; 1 bytes @ 0x0
?_USBCtrlTrfOutHandler:	; 1 bytes @ 0x0
?_USBCtrlTrfInHandler:	; 1 bytes @ 0x0
?_USBCheckStdRequest:	; 1 bytes @ 0x0
?_USBStdFeatureReqHandler:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_HID_tx:	; 1 bytes @ 0x0
?_USBCtrlEPAllowDataStage:	; 1 bytes @ 0x0
?_USBCtrlEPServiceComplete:	; 1 bytes @ 0x0
?_USBCtrlTrfRxService:	; 1 bytes @ 0x0
??_USBCtrlTrfRxService:	; 1 bytes @ 0x0
?_USBStdSetCfgHandler:	; 1 bytes @ 0x0
?_USBStdGetDscHandler:	; 1 bytes @ 0x0
??_USBStdGetDscHandler:	; 1 bytes @ 0x0
?_USBStdGetStatusHandler:	; 1 bytes @ 0x0
??_USBStdGetStatusHandler:	; 1 bytes @ 0x0
?_USBCheckHIDRequest:	; 1 bytes @ 0x0
??_USBCheckHIDRequest:	; 1 bytes @ 0x0
	global	?_USBTransferOnePacket
?_USBTransferOnePacket:	; 2 bytes @ 0x0
?_memset:	; 2 bytes @ 0x0
?_memcpy:	; 2 bytes @ 0x0
	global	USBTransferOnePacket@dir
USBTransferOnePacket@dir:	; 1 bytes @ 0x0
	global	USBConfigureEndpoint@direction
USBConfigureEndpoint@direction:	; 1 bytes @ 0x0
	global	USBCtrlTrfTxService@byteToSend
USBCtrlTrfTxService@byteToSend:	; 1 bytes @ 0x0
	global	USBCtrlTrfRxService@i
USBCtrlTrfRxService@i:	; 1 bytes @ 0x0
	global	USBStdGetStatusHandler@p
USBStdGetStatusHandler@p:	; 2 bytes @ 0x0
	global	memcpy@d1
memcpy@d1:	; 2 bytes @ 0x0
	global	memset@p1
memset@p1:	; 2 bytes @ 0x0
	global	erase_falsh@t_save
erase_falsh@t_save:	; 4 bytes @ 0x0
	ds   1
??_USBConfigureEndpoint:	; 1 bytes @ 0x1
??_USBCtrlTrfInHandler:	; 1 bytes @ 0x1
??_USBCtrlEPAllowDataStage:	; 1 bytes @ 0x1
??_USBCtrlEPServiceComplete:	; 1 bytes @ 0x1
	global	USBCtrlTrfRxService@byteToRead
USBCtrlTrfRxService@byteToRead:	; 1 bytes @ 0x1
	global	USBCtrlTrfInHandler@lastDTS
USBCtrlTrfInHandler@lastDTS:	; 1 bytes @ 0x1
	global	USBTransferOnePacket@data
USBTransferOnePacket@data:	; 2 bytes @ 0x1
	ds   1
??_USBCtrlTrfOutHandler:	; 1 bytes @ 0x2
	global	memcpy@s1
memcpy@s1:	; 2 bytes @ 0x2
	global	memset@c
memset@c:	; 2 bytes @ 0x2
	ds   1
	global	USBTransferOnePacket@len
USBTransferOnePacket@len:	; 1 bytes @ 0x3
	ds   1
??_USBTransferOnePacket:	; 1 bytes @ 0x4
	global	erase_falsh@i
erase_falsh@i:	; 2 bytes @ 0x4
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x4
	global	memset@n
memset@n:	; 2 bytes @ 0x4
	ds   1
	global	flash_read_byte@i
flash_read_byte@i:	; 1 bytes @ 0x5
	global	USBConfigureEndpoint@EPNum
USBConfigureEndpoint@EPNum:	; 1 bytes @ 0x5
	global	flash_write_B32@addr
flash_write_B32@addr:	; 2 bytes @ 0x5
	ds   1
??_memset:	; 1 bytes @ 0x6
??_memcpy:	; 1 bytes @ 0x6
	global	USBTransferOnePacket@ep
USBTransferOnePacket@ep:	; 1 bytes @ 0x6
	global	USBConfigureEndpoint@handle
USBConfigureEndpoint@handle:	; 2 bytes @ 0x6
	global	memcpy@d
memcpy@d:	; 2 bytes @ 0x6
	global	memset@p
memset@p:	; 2 bytes @ 0x6
	ds   1
	global	flash_write_B32@i
flash_write_B32@i:	; 1 bytes @ 0x7
	global	USBTransferOnePacket@handle
USBTransferOnePacket@handle:	; 2 bytes @ 0x7
	ds   1
??_USBDeviceInit:	; 1 bytes @ 0x8
?_USBEnableEndpoint:	; 1 bytes @ 0x8
	global	USBDeviceInit@i
USBDeviceInit@i:	; 1 bytes @ 0x8
	global	USBEnableEndpoint@options
USBEnableEndpoint@options:	; 1 bytes @ 0x8
	global	memcpy@s
memcpy@s:	; 2 bytes @ 0x8
	ds   1
??_USBEnableEndpoint:	; 1 bytes @ 0x9
	global	USBEnableEndpoint@p
USBEnableEndpoint@p:	; 2 bytes @ 0x9
	ds   1
	global	memcpy@tmp
memcpy@tmp:	; 1 bytes @ 0xA
	ds   1
	global	USBEnableEndpoint@ep
USBEnableEndpoint@ep:	; 1 bytes @ 0xB
	ds   1
?_USER_USB_CALLBACK_EVENT_HANDLER:	; 1 bytes @ 0xC
	global	USER_USB_CALLBACK_EVENT_HANDLER@event
USER_USB_CALLBACK_EVENT_HANDLER@event:	; 2 bytes @ 0xC
	ds   2
	global	USER_USB_CALLBACK_EVENT_HANDLER@pdata
USER_USB_CALLBACK_EVENT_HANDLER@pdata:	; 2 bytes @ 0xE
	ds   2
	global	USER_USB_CALLBACK_EVENT_HANDLER@size
USER_USB_CALLBACK_EVENT_HANDLER@size:	; 2 bytes @ 0x10
	ds   2
??_USER_USB_CALLBACK_EVENT_HANDLER:	; 1 bytes @ 0x12
	ds   2
??_USBWakeFromSuspend:	; 1 bytes @ 0x14
??_USBSuspend:	; 1 bytes @ 0x14
??_USBStdFeatureReqHandler:	; 1 bytes @ 0x14
??_USBStdSetCfgHandler:	; 1 bytes @ 0x14
	global	USBStdSetCfgHandler@i
USBStdSetCfgHandler@i:	; 1 bytes @ 0x14
	ds   2
	global	USBStdFeatureReqHandler@pUEP
USBStdFeatureReqHandler@pUEP:	; 2 bytes @ 0x16
	ds   2
	global	USBStdFeatureReqHandler@current_ep_data
USBStdFeatureReqHandler@current_ep_data:	; 1 bytes @ 0x18
	ds   1
	global	USBStdFeatureReqHandler@p
USBStdFeatureReqHandler@p:	; 2 bytes @ 0x19
	ds   2
??_USBCheckStdRequest:	; 1 bytes @ 0x1B
	ds   1
??_USBCtrlEPService:	; 1 bytes @ 0x1C
??_USBCtrlTrfSetupHandler:	; 1 bytes @ 0x1C
	ds   1
??_USBDeviceTasks:	; 1 bytes @ 0x1D
	global	USBDeviceTasks@i
USBDeviceTasks@i:	; 1 bytes @ 0x1D
	ds   1
?_response_event:	; 1 bytes @ 0x1E
??_HID_rx:	; 1 bytes @ 0x1E
??_HID_transf:	; 1 bytes @ 0x1E
??_HID_tx:	; 1 bytes @ 0x1E
	global	response_event@c1
response_event@c1:	; 1 bytes @ 0x1E
	ds   1
??_response_event:	; 1 bytes @ 0x1F
	global	response_event@c0
response_event@c0:	; 1 bytes @ 0x1F
	ds   1
??_Write_event:	; 1 bytes @ 0x20
??_Read_event:	; 1 bytes @ 0x20
	ds   1
	global	Write_event@i
Write_event@i:	; 1 bytes @ 0x21
	ds   1
??_boot:	; 1 bytes @ 0x22
??_main:	; 1 bytes @ 0x22
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    194
;!    Data        4
;!    BSS         59
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           93     35      90
;!    BANK0           160      0       8
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           208      0       0
;!    BANK5h          192      0       0
;!    BANK5l           64      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    USER_USB_CALLBACK_EVENT_HANDLER@pdata	PTR void  size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), USTATcopy(COMRAM[1]), USBActiveConfiguration(COMRAM[1]), NULL(NULL[0]), 
;!		 -> BDT(BIGRAMll[32]), 
;!
;!    memset@p1	PTR void  size(2) Largest target is 32
;!		 -> USBAlternateInterface(COMRAM[1]), BDT(BIGRAMll[32]), UEP1(SFR[1]), 
;!
;!    memset@p	PTR unsigned char  size(2) Largest target is 32
;!		 -> USBAlternateInterface(COMRAM[1]), BDT(BIGRAMll[32]), UEP1(SFR[1]), 
;!
;!    memcpy@d1	PTR void  size(2) Largest target is 8
;!		 -> SetupPkt(BIGRAMlh[8]), 
;!
;!    memcpy@d	PTR unsigned char  size(2) Largest target is 8
;!		 -> SetupPkt(BIGRAMlh[8]), 
;!
;!    memcpy@s1	PTR const void  size(2) Largest target is 2047
;!		 -> CtrlTrfData(BIGRAMlh[8]), RAM(DATA[2047]), SetupPkt(BIGRAMlh[8]), 
;!
;!    memcpy@s	PTR const unsigned char  size(2) Largest target is 2047
;!		 -> CtrlTrfData(BIGRAMlh[8]), RAM(DATA[2047]), SetupPkt(BIGRAMlh[8]), 
;!
;!    USBStdFeatureReqHandler@pUEP	PTR unsigned char  size(2) Largest target is 1
;!		 -> UEP0(SFR[1]), 
;!
;!    USBStdFeatureReqHandler@p	PTR struct __BDT size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), NULL(NULL[0]), BDT(BIGRAMll[32]), 
;!
;!    sp__memcpy	PTR void  size(2) Largest target is 8
;!		 -> SetupPkt(BIGRAMlh[8]), 
;!
;!    USBStdGetStatusHandler@p	PTR struct __BDT size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), NULL(NULL[0]), BDT(BIGRAMll[32]), 
;!
;!    USB_SD_Ptr	const PTR const unsigned char [3] size(1) Largest target is 52
;!		 -> sd002(CODE[46]), sd001(CODE[52]), sd000(CODE[4]), 
;!
;!    USB_CD_Ptr	const PTR const unsigned char [1] size(1) Largest target is 41
;!		 -> configDescriptor1(CODE[41]), 
;!
;!    pDst	PTR unsigned char  size(2) Largest target is 8
;!		 -> CtrlTrfData(BIGRAMlh[8]), NULL(NULL[0]), 
;!
;!    USBConfigureEndpoint@handle	PTR volatile struct __BDT size(2) Largest target is 32
;!		 -> BDT(BIGRAMll[32]), 
;!
;!    pBDTEntryEP0OutCurrent	PTR volatile struct __BDT size(2) Largest target is 32
;!		 -> NULL(NULL[0]), BDT(BIGRAMll[32]), 
;!
;!    pBDTEntryEP0OutNext	PTR volatile struct __BDT size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), NULL(NULL[0]), BDT(BIGRAMll[32]), 
;!
;!    USBTransferOnePacket@data	PTR unsigned char  size(2) Largest target is 0
;!		 -> ToSendDataBuffer(BIGRAMhl[0]), ReceivedDataBuffer(BIGRAMll[0]), 
;!
;!    USBTransferOnePacket@handle	PTR volatile struct __BDT size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), NULL(NULL[0]), BDT(BIGRAMll[32]), 
;!
;!    USBEnableEndpoint@p	PTR unsigned char  size(2) Largest target is 1
;!		 -> UEP0(SFR[1]), 
;!
;!    pBDTEntryOut	PTR volatile struct __BDT[2] size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), NULL(NULL[0]), BDT(BIGRAMll[32]), 
;!
;!    pBDTEntryIn	PTR volatile struct __BDT[2] size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), NULL(NULL[0]), BDT(BIGRAMll[32]), 
;!
;!    S562$pFunc	PTR FTN()void  size(2) Largest target is 0
;!
;!    outPipes.pFunc	PTR FTN()void  size(2) Largest target is 0
;!
;!    S552$wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    outPipes.pDst.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    S552$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    outPipes.pDst.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    S528$wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    inPipes.pSrc.wRom	PTR const unsigned int  size(2) Largest target is 0
;!
;!    S528$wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    inPipes.pSrc.wRam	PTR unsigned int  size(2) Largest target is 0
;!
;!    S528$bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    inPipes.pSrc.bRom	PTR const unsigned char  size(2) Largest target is 0
;!
;!    S528$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    inPipes.pSrc.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    sp__memset	PTR void  size(2) Largest target is 32
;!		 -> USBAlternateInterface(COMRAM[1]), BDT(BIGRAMll[32]), UEP1(SFR[1]), 
;!
;!    USBInHandle	PTR volatile void  size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), NULL(NULL[0]), BDT(BIGRAMll[32]), 
;!
;!    sp__USBTransferOnePacket	PTR void  size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), NULL(NULL[0]), BDT(BIGRAMll[32]), 
;!
;!    USBOutHandle	PTR volatile void  size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), NULL(NULL[0]), BDT(BIGRAMll[32]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _boot->_Write_event
;!    _Write_event->_response_event
;!    _Read_event->_response_event
;!    _HID_transf->_USBDeviceTasks
;!    _USBDeviceTasks->_USBCtrlEPService
;!    _USBWakeFromSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBDeviceInit->_memset
;!    _USBCtrlTrfSetupHandler->_USBCheckStdRequest
;!    _USBCtrlEPAllowDataStage->_USBCtrlTrfTxService
;!    _USBCheckStdRequest->_USBStdFeatureReqHandler
;!    _USBStdSetCfgHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBStdFeatureReqHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USER_USB_CALLBACK_EVENT_HANDLER->_USBEnableEndpoint
;!    _USBEnableEndpoint->_USBConfigureEndpoint
;!    _USBCtrlTrfOutHandler->_USBCtrlTrfRxService
;!    _USBCtrlTrfInHandler->_USBCtrlTrfTxService
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
;!Critical Paths under _main in BANK5h
;!
;!    None.
;!
;!Critical Paths under _main in BANK5l
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
;! (0) _main                                                 1     1      0  275991
;!                                             34 COMRAM     1     1      0
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
;! (1) _boot                                                 0     0      0  235807
;!                             _HID_rx
;!                         _Read_event
;!                        _Write_event
;!                        _erase_falsh
;!                     _response_event
;! ---------------------------------------------------------------------------------
;! (2) _erase_falsh                                          6     6      0     182
;!                                              0 COMRAM     6     6      0
;! ---------------------------------------------------------------------------------
;! (2) _Write_event                                          2     2      0   78617
;!                                             32 COMRAM     2     2      0
;!                             _HID_rx
;!                    _flash_write_B32
;!                     _response_event
;! ---------------------------------------------------------------------------------
;! (3) _flash_write_B32                                      8     8      0     113
;!                                              0 COMRAM     8     8      0
;! ---------------------------------------------------------------------------------
;! (2) _Read_event                                           2     2      0   78527
;!                                             32 COMRAM     1     1      0
;!                             _HID_rx
;!                    _flash_read_byte
;!                     _response_event
;! ---------------------------------------------------------------------------------
;! (2) _response_event                                       2     1      1   39663
;!                                             30 COMRAM     2     1      1
;!                             _HID_tx
;! ---------------------------------------------------------------------------------
;! (3) _HID_tx                                               0     0      0   38818
;!                         _HID_transf
;! ---------------------------------------------------------------------------------
;! (3) _flash_read_byte                                      6     6      0      46
;!                                              0 COMRAM     6     6      0
;! ---------------------------------------------------------------------------------
;! (3) _HID_rx                                               0     0      0   38818
;!                         _HID_transf
;! ---------------------------------------------------------------------------------
;! (4) _HID_transf                                           0     0      0   38818
;!                     _USBDeviceTasks
;!               _USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (5) _USBDeviceTasks                                       1     1      0   37374
;!                                             29 COMRAM     1     1      0
;!          _USBCtrlEPAllowStatusStage
;!                   _USBCtrlEPService
;!                      _USBDeviceInit
;!      _USBIncrement1msInternalTimers
;!                    _USBStallHandler
;!                         _USBSuspend
;!                 _USBWakeFromSuspend
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (6) _USBWakeFromSuspend                                   0     0      0    4780
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (6) _USBSuspend                                           0     0      0    4780
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (6) _USBStallHandler                                      1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) _USBIncrement1msInternalTimers                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _USBDeviceInit                                        1     1      0    1366
;!                                              8 COMRAM     1     1      0
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (6) _USBCtrlEPService                                     1     1      0   21622
;!                                             28 COMRAM     1     1      0
;!                _USBCtrlTrfInHandler
;!               _USBCtrlTrfOutHandler
;!             _USBCtrlTrfSetupHandler
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (7) _memcpy                                              11     5      6     410
;!                                              0 COMRAM    11     5      6
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlTrfSetupHandler                               0     0      0   20983
;!                 _USBCheckStdRequest
;!           _USBCtrlEPServiceComplete
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlEPServiceComplete                             0     0      0      92
;!            _USBCtrlEPAllowDataStage
;!          _USBCtrlEPAllowStatusStage
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlEPAllowDataStage                              0     0      0      92
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (8) _USBCheckStdRequest                                   1     1      0   16111
;!                                             27 COMRAM     1     1      0
;!            _USBStdFeatureReqHandler
;!                _USBStdGetDscHandler
;!             _USBStdGetStatusHandler
;!                _USBStdSetCfgHandler
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (9) _USBStdSetCfgHandler                                  1     1      0    6034
;!                                             20 COMRAM     1     1      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (7) _memset                                               8     2      6    1164
;!                                              0 COMRAM     8     2      6
;! ---------------------------------------------------------------------------------
;! (9) _USBStdGetStatusHandler                               2     2      0      46
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (9) _USBStdGetDscHandler                                  2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (9) _USBStdFeatureReqHandler                              7     7      0    5251
;!                                             20 COMRAM     7     7      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (6) _USER_USB_CALLBACK_EVENT_HANDLER                      8     2      6    4780
;!                                             12 COMRAM     8     2      6
;!                 _USBCheckHIDRequest
;!                  _USBEnableEndpoint
;!               _USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (5) _USBTransferOnePacket                                 9     5      4    1444
;!                                              0 COMRAM     9     5      4
;! ---------------------------------------------------------------------------------
;! (7) _USBEnableEndpoint                                    4     3      1     644
;!                                              8 COMRAM     4     3      1
;!               _USBConfigureEndpoint
;! ---------------------------------------------------------------------------------
;! (8) _USBConfigureEndpoint                                 8     7      1     400
;!                                              0 COMRAM     8     7      1
;! ---------------------------------------------------------------------------------
;! (7) _USBCheckHIDRequest                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlTrfOutHandler                                 0     0      0     114
;!                _USBCtrlTrfRxService
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlTrfRxService                                  2     2      0     114
;!                                              0 COMRAM     2     2      0
;!          _USBCtrlEPAllowStatusStage
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlEPAllowStatusStage                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlTrfInHandler                                  1     1      0     115
;!                                              1 COMRAM     1     1      0
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (10) _USBCtrlTrfTxService                                 1     1      0      92
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 10
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _TMR0_1S_config
;!   _USBDeviceInit
;!     _memset
;!   _USBDeviceTasks
;!     _USBCtrlEPAllowStatusStage
;!     _USBCtrlEPService
;!       _USBCtrlTrfInHandler
;!         _USBCtrlTrfTxService
;!       _USBCtrlTrfOutHandler
;!         _USBCtrlTrfRxService
;!           _USBCtrlEPAllowStatusStage
;!       _USBCtrlTrfSetupHandler
;!         _USBCheckStdRequest
;!           _USBStdFeatureReqHandler
;!             _USER_USB_CALLBACK_EVENT_HANDLER
;!               _USBCheckHIDRequest
;!               _USBEnableEndpoint
;!                 _USBConfigureEndpoint
;!               _USBTransferOnePacket
;!           _USBStdGetDscHandler
;!           _USBStdGetStatusHandler
;!           _USBStdSetCfgHandler
;!             _USER_USB_CALLBACK_EVENT_HANDLER
;!             _memset
;!           _USER_USB_CALLBACK_EVENT_HANDLER
;!         _USBCtrlEPServiceComplete
;!           _USBCtrlEPAllowDataStage
;!             _USBCtrlTrfTxService
;!           _USBCtrlEPAllowStatusStage
;!         _USER_USB_CALLBACK_EVENT_HANDLER
;!       _memcpy
;!     _USBDeviceInit
;!     _USBIncrement1msInternalTimers
;!     _USBStallHandler
;!     _USBSuspend
;!       _USER_USB_CALLBACK_EVENT_HANDLER
;!     _USBWakeFromSuspend
;!       _USER_USB_CALLBACK_EVENT_HANDLER
;!     _USER_USB_CALLBACK_EVENT_HANDLER
;!   _USBTransferOnePacket
;!   _boot
;!     _HID_rx
;!       _HID_transf
;!         _USBDeviceTasks
;!         _USBTransferOnePacket
;!     _Read_event
;!       _HID_rx
;!       _flash_read_byte
;!       _response_event
;!         _HID_tx
;!           _HID_transf
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
;!BIGRAMll           3FD      0       0      26        0.0%
;!BIGRAMhh           2C0      0       0      23        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      21        0.0%
;!BANK7              100      0       0      22        0.0%
;!BITBANK6           100      0       0      20        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BIGRAMlh            D0      0       0      25        0.0%
;!BITBANK4            D0      0       0      12        0.0%
;!BANK4               D0      0       0      13        0.0%
;!BANK5h              C0      0       0      16        0.0%
;!BITBANK5h           C0      0       0      14        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       8       5        5.0%
;!BITCOMRAM           5D      0       0       0        0.0%
;!COMRAM              5D     23      5A       1       96.8%
;!BIGRAMhl            40      0       0      24        0.0%
;!BITBANK5l           40      0       0      15        0.0%
;!BANK5l              40      0       0      17        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      62      19        0.0%
;!DATA                 0      0      62       3        0.0%
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
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called: 13
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
	callstack 18
	line	65
	
l3801:
;main.c: 65: USBDeviceInit();
	call	_USBDeviceInit	;wreg free
	line	67
	
l3803:; BSR set to: 0

;main.c: 67: TRISB = 0b00011111;
	movlw	low(01Fh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	68
	
l3805:; BSR set to: 0

;main.c: 68: SYS_state = 0x02;
	movlw	low(02h)
	movwf	((c:0))^00h,c
	line	69
	
l3807:; BSR set to: 0

;main.c: 69: LATBbits.LATB5 = 1;
	bsf	((c:3978))^0f00h,c,5	;volatile
	line	70
	
l3809:; BSR set to: 0

;main.c: 70: PT0_BOOT = 6;
	movlw	low(06h)
	movwf	((c:1))^00h,c
	line	72
	
l3811:; BSR set to: 0

;main.c: 72: TMR0_1S_config();
	call	_TMR0_1S_config	;wreg free
	line	74
;main.c: 74: while(SYS_state != 0x01)
	goto	l3837
	
l58:
	line	76
;main.c: 75: {;main.c: 76: if(INTCONbits.TMR0IF == 1)
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	u2801
	goto	u2800
u2801:
	goto	l3823
u2800:
	line	78
	
l3813:
;main.c: 77: {;main.c: 78: if(--PT0_BOOT == 0)
	decfsz	((c:1))^00h,c
	
	goto	l3819
	line	80
	
l3815:
;main.c: 79: {;main.c: 80: SYS_state = 0x01;
	movlw	low(01h)
	movwf	((c:0))^00h,c
	line	81
	
l3817:
;main.c: 81: INTCONbits.TMR0IF = 0;
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	82
;main.c: 82: T0CON = 0;
	movlw	low(0)
	movwf	((c:4053))^0f00h,c	;volatile
	line	84
	
l3819:
;main.c: 83: };main.c: 84: TMR0_1S_config();
	call	_TMR0_1S_config	;wreg free
	line	85
	
l3821:
;main.c: 85: LATBbits.LATB5 = ~LATBbits.LATB5;
	btfsc	((c:3978))^0f00h,c,5	;volatile
	goto	u2811
	goto	u2810
u2811:
	movlw	1
	goto	u2816
u2810:
	movlw	0
u2816:
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
	
l3823:
;main.c: 86: };main.c: 88: USBDeviceTasks();
	call	_USBDeviceTasks	;wreg free
	line	89
	
l3825:
;main.c: 89: if(USBDeviceState < CONFIGURED_STATE || UCONbits.SUSPND) continue;
		movlw	020h-1
	cpfsgt	((c:_USBDeviceState))^00h,c
	goto	u2821
	goto	u2820

u2821:
	goto	l3837
u2820:
	
l3827:
	btfss	((c:3949))^0f00h,c,1	;volatile
	goto	u2831
	goto	u2830
u2831:
	goto	l3829
u2830:
	goto	l3837
	line	90
	
l3829:
;main.c: 90: USBOutHandle = (volatile void*)USBTransferOnePacket(1,0,&ReceivedDataBuffer[0],64);
	movlw	low(0)
	movwf	((c:USBTransferOnePacket@dir))^00h,c
		movlw	low(1280)
	movwf	((c:USBTransferOnePacket@data))^00h,c
	movlw	high(1280)
	movwf	((c:USBTransferOnePacket@data+1))^00h,c

	movlw	low(040h)
	movwf	((c:USBTransferOnePacket@len))^00h,c
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movff	0+?_USBTransferOnePacket,(c:_USBOutHandle)
	movff	1+?_USBTransferOnePacket,(c:_USBOutHandle+1)
	line	91
	
l3831:
;main.c: 91: if(ReceivedDataBuffer[0x01] == 0x02 && ReceivedDataBuffer[0x02] == 0x01)
	movff	0+(1280+01h),wreg
	xorlw	02h
	btfss	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l3837
u2840:
	
l3833:
	movff	0+(1280+02h),wreg
	xorlw	01h
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l3837
u2850:
	line	93
	
l3835:
;main.c: 92: {;main.c: 93: boot();
	call	_boot	;wreg free
	line	74
	
l3837:
		decf	((c:0))^00h,c,w
	btfss	status,2
	goto	u2861
	goto	u2860

u2861:
	goto	l58
u2860:
	line	97
	
l3839:
;main.c: 94: };main.c: 96: };main.c: 97: init_APP();
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
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
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
	
l3795:
;main.c: 102: TMR0_1S_config();
	call	_TMR0_1S_config	;wreg free
	line	103
;main.c: 103: while(INTCONbits.TMR0IF == 0);
	
l69:
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	u2791
	goto	u2790
u2791:
	goto	l69
u2790:
	
l71:
	line	104
;main.c: 104: INTCONbits.TMR0IF = 0;
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	105
	
l3797:
;main.c: 105: T0CON = 0;
	movlw	low(0)
	movwf	((c:4053))^0f00h,c	;volatile
	line	107
;main.c: 107: LATB = 0x00;
	movlw	low(0)
	movwf	((c:3978))^0f00h,c	;volatile
	line	108
	
l3799:
;main.c: 108: TRISB = 0xFF;
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

;; *************** function _TMR0_1S_config *****************
;; Defined at:
;;		line 36 in file "system/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_init_APP
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"system/system.c"
	line	36
global __ptext2
__ptext2:
psect	text2
	file	"system/system.c"
	line	36
	global	__size_of_TMR0_1S_config
	__size_of_TMR0_1S_config	equ	__end_of_TMR0_1S_config-_TMR0_1S_config
	
_TMR0_1S_config:
;incstack = 0
	callstack 29
	line	38
	
l3657:
;system.c: 38: INTCONbits.TMR0IF = 0;
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	39
	
l3659:
;system.c: 39: TMR0L = 0x24;
	movlw	low(024h)
	movwf	((c:4054))^0f00h,c	;volatile
	line	40
;system.c: 40: TMR0H = 0x72;
	movlw	low(072h)
	movwf	((c:4055))^0f00h,c	;volatile
	line	41
;system.c: 41: T0CON = 0b10000111;
	movlw	low(087h)
	movwf	((c:4053))^0f00h,c	;volatile
	line	42
	
l160:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR0_1S_config
	__end_of_TMR0_1S_config:
	signat	_TMR0_1S_config,89
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
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 12
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
psect	text3,class=CODE,space=0,reloc=2,inline,group=0
	file	"main.c"
	line	112
global __ptext3
__ptext3:
psect	text3
	file	"main.c"
	line	112
	global	__size_of_boot
	__size_of_boot	equ	__end_of_boot-_boot
	
_boot:
;incstack = 0
	callstack 18
	line	114
	
l3767:
;main.c: 114: response_event(0x02, 0x01);
	movlw	low(01h)
	movwf	((c:response_event@c1))^00h,c
	movlw	(02h)&0ffh
	
	call	_response_event
	line	116
	
l3769:
;main.c: 116: LATBbits.LATB5 = 1;
	bsf	((c:3978))^0f00h,c,5	;volatile
	line	118
;main.c: 118: while(SYS_state == 0x02)
	goto	l3793
	line	120
	
l3771:
;main.c: 119: {;main.c: 120: HID_rx();
	call	_HID_rx	;wreg free
	line	122
;main.c: 122: switch (ReceivedDataBuffer[0x01])
	goto	l3791
	line	125
	
l3773:
;main.c: 125: Write_event();
	call	_Write_event	;wreg free
	line	126
;main.c: 126: break;
	goto	l79
	line	128
	
l3775:
;main.c: 128: erase_falsh();
	call	_erase_falsh	;wreg free
	line	129
	
l3777:
;main.c: 129: response_event(0x07,0x02);
	movlw	low(02h)
	movwf	((c:response_event@c1))^00h,c
	movlw	(07h)&0ffh
	
	call	_response_event
	line	130
;main.c: 130: break;
	goto	l79
	line	132
	
l3779:
;main.c: 132: Read_event();
	call	_Read_event	;wreg free
	line	133
;main.c: 133: break;
	goto	l79
	line	135
	
l3781:
;main.c: 135: SYS_state = 0x01;
	movlw	low(01h)
	movwf	((c:0))^00h,c
	line	136
	
l3783:
;main.c: 136: response_event(0x01, 0x01);
	movlw	low(01h)
	movwf	((c:response_event@c1))^00h,c
	movlw	(01h)&0ffh
	
	call	_response_event
	line	137
;main.c: 137: break;
	goto	l79
	line	140
	
l3785:
;main.c: 140: if(SYS_state == 0x08)
		movlw	8
	xorwf	((c:0))^00h,c,w
	btfss	status,2
	goto	u2771
	goto	u2770

u2771:
	goto	l79
u2770:
	line	142
	
l3787:
;main.c: 141: {;main.c: 142: PORTB |= 0b11100000;
	movlw	(0E0h)&0ffh
	iorwf	((c:3969))^0f00h,c	;volatile
	line	143
;main.c: 143: while(1);
	
l85:
	
l86:
	goto	l85
	line	122
	
l3791:
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
	goto	l3781
	xorlw	3^1	; case 3
	skipnz
	goto	l3773
	xorlw	4^3	; case 4
	skipnz
	goto	l3779
	xorlw	7^4	; case 7
	skipnz
	goto	l3775
	goto	l3785

	line	146
	
l79:
	line	147
;main.c: 147: ReceivedDataBuffer[0x01]=0;
	movlw	low(0)
	movff	wreg,0+(1280+01h)

	line	118
	
l3793:
		movlw	2
	xorwf	((c:0))^00h,c,w
	btfsc	status,2
	goto	u2781
	goto	u2780

u2781:
	goto	l3771
u2780:
	line	149
	
l89:
	return	;funcret
	callstack 0
GLOBAL	__end_of_boot
	__end_of_boot:
	signat	_boot,89
	global	_erase_falsh

;; *************** function _erase_falsh *****************
;; Defined at:
;;		line 65 in file "system/memory.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t_save          4    0[COMRAM] unsigned char [4]
;;  i               2    4[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_boot
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"system/memory.c"
	line	65
global __ptext4
__ptext4:
psect	text4
	file	"system/memory.c"
	line	65
	global	__size_of_erase_falsh
	__size_of_erase_falsh	equ	__end_of_erase_falsh-_erase_falsh
	
_erase_falsh:
;incstack = 0
	callstack 29
	line	68
	
l3693:
;memory.c: 67: uint16_t i;;memory.c: 68: uint8_t t_save[4] = {0x7E,0xEF,0x3F,0xF0};
	movff	(erase_falsh@F3710),(c:erase_falsh@t_save)
	movff	(erase_falsh@F3710+1),(c:erase_falsh@t_save+1)
	movff	(erase_falsh@F3710+2),(c:erase_falsh@t_save+2)
	movff	(erase_falsh@F3710+3),(c:erase_falsh@t_save+3)
	line	70
	
l3695:
;memory.c: 70: for(i = 0;i<0x6840;i+=64)
	movlw	high(0)
	movwf	((c:erase_falsh@i+1))^00h,c
	movlw	low(0)
	movwf	((c:erase_falsh@i))^00h,c
	line	72
	
l3701:
;memory.c: 71: {;memory.c: 72: PORTB |= 0b11100000;
	movlw	(0E0h)&0ffh
	iorwf	((c:3969))^0f00h,c	;volatile
	line	73
	
l3703:
;memory.c: 73: TBLPTR = i;
	movff	(c:erase_falsh@i),(c:4086)	;volatile
	movff	(c:erase_falsh@i+1),(c:4086+1)	;volatile
	clrf	((c:4086+2))^0f00h,c	;volatile
	line	74
	
l3705:
;memory.c: 74: EECON1bits.EEPGD = 1;
	bsf	((c:4006))^0f00h,c,7	;volsfr
	line	75
	
l3707:
;memory.c: 75: EECON1bits.CFGS = 0;
	bcf	((c:4006))^0f00h,c,6	;volsfr
	line	76
	
l3709:
;memory.c: 76: EECON1bits.WREN = 1;
	bsf	((c:4006))^0f00h,c,2	;volsfr
	line	77
	
l3711:
;memory.c: 77: EECON1bits.FREE = 1;
	bsf	((c:4006))^0f00h,c,4	;volsfr
	line	79
	
l3713:
;memory.c: 79: EECON2 = 0x55;
	movlw	low(055h)
	movwf	((c:4007))^0f00h,c	;volsfr
	line	80
	
l3715:
;memory.c: 80: EECON2 = 0xAA;
	movlw	low(0AAh)
	movwf	((c:4007))^0f00h,c	;volsfr
	line	82
	
l3717:
;memory.c: 82: EECON1bits.WR = 1;
	bsf	((c:4006))^0f00h,c,1	;volsfr
	line	83
;memory.c: 83: while(EECON1bits.WR);
	
l226:
	btfsc	((c:4006))^0f00h,c,1	;volsfr
	goto	u2711
	goto	u2710
u2711:
	goto	l226
u2710:
	
l228:
	line	84
;memory.c: 84: EECON1bits.WREN = 0;
	bcf	((c:4006))^0f00h,c,2	;volsfr
	line	85
	
l3719:
;memory.c: 85: PORTB &= 0b00011111;
	movlw	(01Fh)&0ffh
	andwf	((c:3969))^0f00h,c	;volatile
	line	70
	movlw	040h
	addwf	((c:erase_falsh@i))^00h,c
	movlw	0
	addwfc	((c:erase_falsh@i+1))^00h,c
		movlw	64
	subwf	 ((c:erase_falsh@i))^00h,c,w
	movlw	104
	subwfb	((c:erase_falsh@i+1))^00h,c,w
	btfss	status,0
	goto	u2721
	goto	u2720

u2721:
	goto	l3701
u2720:
	line	88
	
l3721:
;memory.c: 86: };memory.c: 88: TBLPTR = 0;
	movlw	low(0)
	movwf	((c:4086))^0f00h,c	;volatile
	movlw	high(0)
	movwf	((c:4086+1))^0f00h,c	;volatile
	movlw	low highword(0)
	movwf	((c:4086+2))^0f00h,c	;volatile

	line	90
;memory.c: 90: for(i = 0; i < 32; ++i)
	movlw	high(0)
	movwf	((c:erase_falsh@i+1))^00h,c
	movlw	low(0)
	movwf	((c:erase_falsh@i))^00h,c
	line	92
	
l3727:
;memory.c: 91: {;memory.c: 92: if (i<4)
		movf	((c:erase_falsh@i+1))^00h,c,w
	bnz	u2731
	movlw	4
	subwf	 ((c:erase_falsh@i))^00h,c,w
	btfsc	status,0
	goto	u2731
	goto	u2730

u2731:
	goto	l231
u2730:
	line	94
	
l3729:
;memory.c: 93: {;memory.c: 94: TABLAT = t_save[i];
	movf	((c:erase_falsh@i))^00h,c,w
	addlw	low(erase_falsh@t_save)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:4085))^0f00h,c	;volatile
	line	95
;memory.c: 95: }
	goto	l232
	line	96
	
l231:
	line	98
;memory.c: 96: else;memory.c: 97: {;memory.c: 98: TABLAT = 0xFF;
	setf	((c:4085))^0f00h,c	;volatile
	line	99
	
l232:
	line	100
# 100 "system/memory.c"
tblwtpostinc ;# 
psect	text4
	line	90
	
l3731:
	infsnz	((c:erase_falsh@i))^00h,c
	incf	((c:erase_falsh@i+1))^00h,c
	
l3733:
		movf	((c:erase_falsh@i+1))^00h,c,w
	bnz	u2740
	movlw	32
	subwf	 ((c:erase_falsh@i))^00h,c,w
	btfss	status,0
	goto	u2741
	goto	u2740

u2741:
	goto	l3727
u2740:
	
l230:
	line	104
# 104 "system/memory.c"
tblrdpostdec ;# 
psect	text4
	line	105
	
l3735:
;memory.c: 105: EECON1 = 0b10100100;
	movlw	low(0A4h)
	movwf	((c:4006))^0f00h,c	;volsfr
	line	106
;memory.c: 106: EECON2 = 0x55;
	movlw	low(055h)
	movwf	((c:4007))^0f00h,c	;volsfr
	line	107
;memory.c: 107: EECON2 = 0xAA;
	movlw	low(0AAh)
	movwf	((c:4007))^0f00h,c	;volsfr
	line	108
	
l3737:
;memory.c: 108: EECON1bits.WR = 1;
	bsf	((c:4006))^0f00h,c,1	;volsfr
	line	109
;memory.c: 109: while(EECON1bits.WR);
	
l233:
	btfsc	((c:4006))^0f00h,c,1	;volsfr
	goto	u2751
	goto	u2750
u2751:
	goto	l233
u2750:
	
l235:
	line	110
;memory.c: 110: EECON1bits.WREN = 0;
	bcf	((c:4006))^0f00h,c,2	;volsfr
	line	111
;memory.c: 111: LATBbits.LATB5 = 1;
	bsf	((c:3978))^0f00h,c,5	;volatile
	line	112
	
l236:
	return	;funcret
	callstack 0
GLOBAL	__end_of_erase_falsh
	__end_of_erase_falsh:
	signat	_erase_falsh,89
	global	_Write_event

;; *************** function _Write_event *****************
;; Defined at:
;;		line 151 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   33[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 11
;; This function calls:
;;		_HID_rx
;;		_flash_write_B32
;;		_response_event
;; This function is called by:
;;		_boot
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,inline,group=0
	file	"main.c"
	line	151
global __ptext5
__ptext5:
psect	text5
	file	"main.c"
	line	151
	global	__size_of_Write_event
	__size_of_Write_event	equ	__end_of_Write_event-_Write_event
	
_Write_event:
;incstack = 0
	callstack 18
	line	154
	
l3661:
;main.c: 153: uint8_t i;;main.c: 154: response_event(0x03, 0x01);
	movlw	low(01h)
	movwf	((c:response_event@c1))^00h,c
	movlw	(03h)&0ffh
	
	call	_response_event
	line	156
	
l3663:
;main.c: 156: SYS_state = 0x03;
	movlw	low(03h)
	movwf	((c:0))^00h,c
	line	157
	
l3665:
;main.c: 157: PORTB |= 0b11100000;
	movlw	(0E0h)&0ffh
	iorwf	((c:3969))^0f00h,c	;volatile
	line	159
;main.c: 159: while(SYS_state == 0x03)
	goto	l3687
	line	161
	
l3667:
;main.c: 160: {;main.c: 161: HID_rx();
	call	_HID_rx	;wreg free
	line	162
;main.c: 162: switch (ReceivedDataBuffer[0x02])
	goto	l3685
	line	165
	
l3669:
;main.c: 165: i = flash_write_B32();
	call	_flash_write_B32	;wreg free
	movwf	((c:Write_event@i))^00h,c
	line	166
	
l3671:
;main.c: 166: response_event(0x03, i);
	movff	(c:Write_event@i),(c:response_event@c1)
	movlw	(03h)&0ffh
	
	call	_response_event
	line	167
	
l3673:
;main.c: 167: PORTB = ~(PORTB & 0b11100000) & (PORTB | 0b11100000);
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(0E0h)
	xorlw	0ffh
	movwf	(??_Write_event+0+0)^00h,c
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	andwf	((??_Write_event+0+0))^00h,c,w
	movwf	((c:3969))^0f00h,c	;volatile
	line	168
;main.c: 168: break;
	goto	l96
	line	171
	
l3675:
;main.c: 171: SYS_state = 0x02;
	movlw	low(02h)
	movwf	((c:0))^00h,c
	line	172
	
l3677:
;main.c: 172: response_event(0x03, 0x02);
	movlw	low(02h)
	movwf	((c:response_event@c1))^00h,c
	movlw	(03h)&0ffh
	
	call	_response_event
	line	173
;main.c: 173: break;
	goto	l96
	line	176
	
l3679:
;main.c: 176: if(ReceivedDataBuffer[0x01] == 0x08)
	movff	0+(1280+01h),wreg
	xorlw	08h
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l96
u2690:
	line	179
	
l3681:
;main.c: 177: {;main.c: 179: SYS_state = 0x08;
	movlw	low(08h)
	movwf	((c:0))^00h,c
	goto	l96
	line	162
	
l3685:
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
	goto	l3675
	xorlw	3^2	; case 3
	skipnz
	goto	l3669
	goto	l3679

	line	182
	
l96:
	line	184
;main.c: 184: ReceivedDataBuffer[0x01]=0;
	movlw	low(0)
	movff	wreg,0+(1280+01h)

	line	185
;main.c: 185: ReceivedDataBuffer[0x02]=0;
	movlw	low(0)
	movff	wreg,0+(1280+02h)

	line	159
	
l3687:
		movlw	3
	xorwf	((c:0))^00h,c,w
	btfsc	status,2
	goto	u2701
	goto	u2700

u2701:
	goto	l3667
u2700:
	line	188
	
l3689:
;main.c: 187: };main.c: 188: PORTB &= 0b00011111;
	movlw	(01Fh)&0ffh
	andwf	((c:3969))^0f00h,c	;volatile
	line	189
	
l3691:
;main.c: 189: LATBbits.LATB5 = 1;
	bsf	((c:3978))^0f00h,c,5	;volatile
	line	190
	
l101:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Write_event
	__end_of_Write_event:
	signat	_Write_event,89
	global	_flash_write_B32

;; *************** function _flash_write_B32 *****************
;; Defined at:
;;		line 3 in file "system/memory.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  addr            2    5[COMRAM] unsigned int 
;;  i               1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Write_event
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"system/memory.c"
	line	3
global __ptext6
__ptext6:
psect	text6
	file	"system/memory.c"
	line	3
	global	__size_of_flash_write_B32
	__size_of_flash_write_B32	equ	__end_of_flash_write_B32-_flash_write_B32
	
_flash_write_B32:
;incstack = 0
	callstack 28
	line	6
	
l3607:
;memory.c: 5: uint8_t i;;memory.c: 6: uint16_t addr = ReceivedDataBuffer[0x03] | (ReceivedDataBuffer[0x04]<<8);
	movff	0+(1280+04h),??_flash_write_B32+0+0
	movf	(??_flash_write_B32+0+0)^00h,c,w
	movwf	(??_flash_write_B32+1+0+1)^00h,c
	clrf	(??_flash_write_B32+1+0)^00h,c
	lfsr	2,1280+03h
	movf	indf2,w
	movwf	(??_flash_write_B32+3+0)^00h,c
	clrf	(??_flash_write_B32+3+0+1)^00h,c

	movf	(??_flash_write_B32+1+0)^00h,c,w
	iorwf	(??_flash_write_B32+3+0)^00h,c,w
	movwf	((c:flash_write_B32@addr))^00h,c
	movf	(??_flash_write_B32+1+1)^00h,c,w
	iorwf	(??_flash_write_B32+3+1)^00h,c,w
	movwf	1+((c:flash_write_B32@addr))^00h,c
	line	8
	
l3609:
;memory.c: 8: if(addr+32 > 0x8000 || addr & 0b11111 )
	movlw	020h
	addwf	((c:flash_write_B32@addr))^00h,c,w
	movwf	(??_flash_write_B32+0+0)^00h,c
	movlw	0
	addwfc	((c:flash_write_B32@addr+1))^00h,c,w
	movwf	(??_flash_write_B32+0+0+1)^00h,c
		decf	(??_flash_write_B32+0+0)^00h,c,w
	movlw	128
	subwfb	(??_flash_write_B32+0+1)^00h,c,w
	btfsc	status,0
	goto	u2641
	goto	u2640

u2641:
	goto	l3613
u2640:
	
l3611:
	movff	(c:flash_write_B32@addr),??_flash_write_B32+0+0
	movlw	01Fh
	andwf	(??_flash_write_B32+0+0)^00h,c
	btfsc	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l3619
u2650:
	line	12
	
l3613:
;memory.c: 9: {;memory.c: 12: PORTB |= 0b11100000;
	movlw	(0E0h)&0ffh
	iorwf	((c:3969))^0f00h,c	;volatile
	line	13
	
l3615:
;memory.c: 13: return 0xFF;
	movlw	(0FFh)&0ffh
	goto	l208
	line	17
	
l3619:
;memory.c: 14: };memory.c: 17: TBLPTRU = 0;
	movlw	low(0)
	movwf	((c:4088))^0f00h,c	;volatile
	line	18
	
l3621:
;memory.c: 18: TBLPTRH = ReceivedDataBuffer[0x04];
	movff	0+(1280+04h),(c:4087)	;volatile
	line	19
	
l3623:
;memory.c: 19: TBLPTRL = ReceivedDataBuffer[0x03];
	movff	0+(1280+03h),(c:4086)	;volatile
	line	22
;memory.c: 22: for(i = 0; i < 32; ++i)
	movlw	low(0)
	movwf	((c:flash_write_B32@i))^00h,c
	line	24
	
l3629:
;memory.c: 23: {;memory.c: 24: TABLAT = ReceivedDataBuffer[0x05+i];
	movlw	low(1280+05h)
	addwf	((c:flash_write_B32@i))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(1280+05h)
	addwfc	1+c:fsr2l
	movf	indf2,w
	movwf	((c:4085))^0f00h,c	;volatile
	line	25
# 25 "system/memory.c"
tblwtpostinc ;# 
psect	text6
	line	22
	
l3631:
	incf	((c:flash_write_B32@i))^00h,c
	
l3633:
		movlw	020h-1
	cpfsgt	((c:flash_write_B32@i))^00h,c
	goto	u2661
	goto	u2660

u2661:
	goto	l3629
u2660:
	
l210:
	line	30
# 30 "system/memory.c"
tblrdpostdec ;# 
psect	text6
	line	33
	
l3635:
;memory.c: 33: EECON1 = 0b10100100;
	movlw	low(0A4h)
	movwf	((c:4006))^0f00h,c	;volsfr
	line	34
;memory.c: 34: EECON2 = 0x55;
	movlw	low(055h)
	movwf	((c:4007))^0f00h,c	;volsfr
	line	35
;memory.c: 35: EECON2 = 0xAA;
	movlw	low(0AAh)
	movwf	((c:4007))^0f00h,c	;volsfr
	line	36
	
l3637:
;memory.c: 36: EECON1bits.WR = 1;
	bsf	((c:4006))^0f00h,c,1	;volsfr
	line	37
;memory.c: 37: while(EECON1bits.WR);
	
l211:
	btfsc	((c:4006))^0f00h,c,1	;volsfr
	goto	u2671
	goto	u2670
u2671:
	goto	l211
u2670:
	
l213:
	line	38
;memory.c: 38: EECON1bits.WREN = 0;
	bcf	((c:4006))^0f00h,c,2	;volsfr
	line	41
	
l3639:
;memory.c: 41: return 0x03;
	movlw	(03h)&0ffh
	line	42
	
l208:
	return	;funcret
	callstack 0
GLOBAL	__end_of_flash_write_B32
	__end_of_flash_write_B32:
	signat	_flash_write_B32,89
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
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 11
;; This function calls:
;;		_HID_rx
;;		_flash_read_byte
;;		_response_event
;; This function is called by:
;;		_boot
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,inline,group=0
	file	"main.c"
	line	192
global __ptext7
__ptext7:
psect	text7
	file	"main.c"
	line	192
	global	__size_of_Read_event
	__size_of_Read_event	equ	__end_of_Read_event-_Read_event
	
_Read_event:
;incstack = 0
	callstack 18
	line	195
	
l3739:
;main.c: 194: uint8_t i;;main.c: 195: response_event(0x04, 0x01);
	movlw	low(01h)
	movwf	((c:response_event@c1))^00h,c
	movlw	(04h)&0ffh
	
	call	_response_event
	line	197
	
l3741:
;main.c: 197: SYS_state = 0x04;
	movlw	low(04h)
	movwf	((c:0))^00h,c
	line	198
	
l3743:
;main.c: 198: LATBbits.LATB6 = 1;
	bsf	((c:3978))^0f00h,c,6	;volatile
	line	200
;main.c: 200: while(SYS_state == 0x04)
	goto	l3761
	line	202
	
l3745:
;main.c: 201: {;main.c: 202: HID_rx();
	call	_HID_rx	;wreg free
	line	203
;main.c: 203: switch (ReceivedDataBuffer[0x02])
	goto	l3759
	line	206
	
l3747:
;main.c: 206: flash_read_byte();
	call	_flash_read_byte	;wreg free
	line	207
	
l3749:
;main.c: 207: response_event(0x04, 0x03);
	movlw	low(03h)
	movwf	((c:response_event@c1))^00h,c
	movlw	(04h)&0ffh
	
	call	_response_event
	line	208
	
l3751:
;main.c: 208: PORTB = ~(PORTB & 0b11100000) & (PORTB | 0b11100000);
	movf	((c:3969))^0f00h,c,w	;volatile
	andlw	low(0E0h)
	xorlw	0ffh
	movwf	(??_Read_event+0+0)^00h,c
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	andwf	((??_Read_event+0+0))^00h,c,w
	movwf	((c:3969))^0f00h,c	;volatile
	line	209
;main.c: 209: break;
	goto	l108
	line	212
	
l3753:
;main.c: 212: SYS_state = 0x02;
	movlw	low(02h)
	movwf	((c:0))^00h,c
	line	213
	
l3755:
;main.c: 213: response_event(0x04, 0x02);
	movlw	low(02h)
	movwf	((c:response_event@c1))^00h,c
	movlw	(04h)&0ffh
	
	call	_response_event
	line	214
;main.c: 214: break;
	goto	l108
	line	203
	
l3759:
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
	goto	l3753
	xorlw	3^2	; case 3
	skipnz
	goto	l3747
	goto	l108

	line	218
	
l108:
	line	220
;main.c: 220: ReceivedDataBuffer[0x01]=0;
	movlw	low(0)
	movff	wreg,0+(1280+01h)

	line	221
;main.c: 221: ReceivedDataBuffer[0x02]=0;
	movlw	low(0)
	movff	wreg,0+(1280+02h)

	line	200
	
l3761:
		movlw	4
	xorwf	((c:0))^00h,c,w
	btfsc	status,2
	goto	u2761
	goto	u2760

u2761:
	goto	l3745
u2760:
	line	224
	
l3763:
;main.c: 223: };main.c: 224: PORTB &= 0b00011111;
	movlw	(01Fh)&0ffh
	andwf	((c:3969))^0f00h,c	;volatile
	line	225
	
l3765:
;main.c: 225: LATBbits.LATB5 = 1;
	bsf	((c:3978))^0f00h,c,5	;volatile
	line	226
	
l112:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Read_event
	__end_of_Read_event:
	signat	_Read_event,89
	global	_response_event

;; *************** function _response_event *****************
;; Defined at:
;;		line 44 in file "system/system.c"
;; Parameters:    Size  Location     Type
;;  c0              1    wreg     unsigned char 
;;  c1              1   30[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c0              1   31[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 10
;; This function calls:
;;		_HID_tx
;; This function is called by:
;;		_boot
;;		_Write_event
;;		_Read_event
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,inline,group=0
	file	"system/system.c"
	line	44
global __ptext8
__ptext8:
psect	text8
	file	"system/system.c"
	line	44
	global	__size_of_response_event
	__size_of_response_event	equ	__end_of_response_event-_response_event
	
_response_event:
;incstack = 0
	callstack 19
;response_event@c0 stored from wreg
	movwf	((c:response_event@c0))^00h,c
	line	46
	
l3597:
;system.c: 46: ToSendDataBuffer[0x01] = c0;
	movff	(c:response_event@c0),0+(1344+01h)
	line	47
	
l3599:
;system.c: 47: ToSendDataBuffer[0x02] = c1;
	movff	(c:response_event@c1),0+(1344+02h)
	line	48
	
l3601:
;system.c: 48: HID_tx();
	call	_HID_tx	;wreg free
	line	49
	
l163:
	return	;funcret
	callstack 0
GLOBAL	__end_of_response_event
	__end_of_response_event:
	signat	_response_event,8313
	global	_HID_tx

;; *************** function _HID_tx *****************
;; Defined at:
;;		line 5 in file "system/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_HID_transf
;; This function is called by:
;;		_response_event
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,inline,group=0
	line	5
global __ptext9
__ptext9:
psect	text9
	file	"system/system.c"
	line	5
	global	__size_of_HID_tx
	__size_of_HID_tx	equ	__end_of_HID_tx-_HID_tx
	
_HID_tx:
;incstack = 0
	callstack 19
	line	7
	
l3593:
;system.c: 7: HID_RT_sel = 0;
	movlw	low(0)
	movwf	((c:2))^00h,c
	line	8
	
l3595:
;system.c: 8: HID_transf();
	call	_HID_transf	;wreg free
	line	10
	
l143:
	return	;funcret
	callstack 0
GLOBAL	__end_of_HID_tx
	__end_of_HID_tx:
	signat	_HID_tx,89
	global	_flash_read_byte

;; *************** function _flash_read_byte *****************
;; Defined at:
;;		line 114 in file "system/memory.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Read_event
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"system/memory.c"
	line	114
global __ptext10
__ptext10:
psect	text10
	file	"system/memory.c"
	line	114
	global	__size_of_flash_read_byte
	__size_of_flash_read_byte	equ	__end_of_flash_read_byte-_flash_read_byte
	
_flash_read_byte:
;incstack = 0
	callstack 28
	line	117
	
l3643:
;memory.c: 116: uint8_t i;;memory.c: 117: TBLPTR = ReceivedDataBuffer[0x03] | (ReceivedDataBuffer[0x04]<<8);
	movff	0+(1280+04h),??_flash_read_byte+0+0
	movf	(??_flash_read_byte+0+0)^00h,c,w
	movwf	(??_flash_read_byte+1+0+1)^00h,c
	clrf	(??_flash_read_byte+1+0)^00h,c
	lfsr	2,1280+03h
	movf	indf2,w
	movwf	(??_flash_read_byte+3+0)^00h,c
	clrf	(??_flash_read_byte+3+0+1)^00h,c

	movf	(??_flash_read_byte+1+0)^00h,c,w
	iorwf	(??_flash_read_byte+3+0)^00h,c
	movf	(??_flash_read_byte+1+1)^00h,c,w
	iorwf	(??_flash_read_byte+3+1)^00h,c
	movff	??_flash_read_byte+3+0,(c:4086)	;volatile
	movff	??_flash_read_byte+3+1,(c:4086+1)	;volatile
	clrf	((c:4086+2))^0f00h,c	;volatile
	btfsc	((c:4086+1))^0f00h,c,7	;volatile
	decf	((c:4086+2))^0f00h,c	;volatile
	line	119
	
l3645:
;memory.c: 119: ToSendDataBuffer[0x04] = ReceivedDataBuffer[0x04];
	movff	0+(1280+04h),0+(1344+04h)
	line	120
	
l3647:
;memory.c: 120: ToSendDataBuffer[0x03] = ReceivedDataBuffer[0x03];
	movff	0+(1280+03h),0+(1344+03h)
	line	122
	
l3649:
;memory.c: 122: for(i=0;i<ReceivedDataBuffer[0x05];++i)
	movlw	low(0)
	movwf	((c:flash_read_byte@i))^00h,c
	goto	l3655
	line	123
	
l240:
	line	124
# 124 "system/memory.c"
TBLRD*+ ;# 
psect	text10
	line	125
	
l3651:
;memory.c: 125: ToSendDataBuffer[0x05+i]=TABLAT;
	movlw	low(1344+05h)
	addwf	((c:flash_read_byte@i))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(1344+05h)
	addwfc	1+c:fsr2l
	movff	(c:4085),indf2	;volatile

	line	122
	
l3653:
	incf	((c:flash_read_byte@i))^00h,c
	
l3655:
	lfsr	2,1280+05h
		movf	postinc2,w
	subwf	((c:flash_read_byte@i))^00h,c,w
	btfss	status,0
	goto	u2681
	goto	u2680

u2681:
	goto	l240
u2680:
	line	127
	
l242:
	return	;funcret
	callstack 0
GLOBAL	__end_of_flash_read_byte
	__end_of_flash_read_byte:
	signat	_flash_read_byte,89
	global	_HID_rx

;; *************** function _HID_rx *****************
;; Defined at:
;;		line 11 in file "system/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_HID_transf
;; This function is called by:
;;		_boot
;;		_Write_event
;;		_Read_event
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,inline,group=0
	file	"system/system.c"
	line	11
global __ptext11
__ptext11:
psect	text11
	file	"system/system.c"
	line	11
	global	__size_of_HID_rx
	__size_of_HID_rx	equ	__end_of_HID_rx-_HID_rx
	
_HID_rx:
;incstack = 0
	callstack 19
	line	13
	
l3603:
;system.c: 13: HID_RT_sel = 1;
	movlw	low(01h)
	movwf	((c:2))^00h,c
	line	14
	
l3605:
;system.c: 14: HID_transf();
	call	_HID_transf	;wreg free
	line	16
	
l146:
	return	;funcret
	callstack 0
GLOBAL	__end_of_HID_rx
	__end_of_HID_rx:
	signat	_HID_rx,89
	global	_HID_transf

;; *************** function _HID_transf *****************
;; Defined at:
;;		line 18 in file "system/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_USBDeviceTasks
;;		_USBTransferOnePacket
;; This function is called by:
;;		_HID_tx
;;		_HID_rx
;; This function uses a non-reentrant model
;;
psect	_HID_transf_text,class=CODE,space=0,ovrld,reloc=2,group=0
	line	18
global __p_HID_transf_text
__p_HID_transf_text:
psect	_HID_transf_text
	file	"system/system.c"
	line	18
	global	__size_of_HID_transf
	__size_of_HID_transf	equ	__end_of_HID_transf-_HID_transf
	
_HID_transf:
;incstack = 0
	callstack 19
	global _HID_transf_absaddr
	_HID_transf_absaddr equ 0x69FE
	line	20
;system.c: 20: while(1)
	
l149:
	line	22
	
l3581:
;system.c: 21: {;system.c: 22: USBDeviceTasks();
	call	_USBDeviceTasks	;wreg free
	line	23
	
l3583:
;system.c: 23: if(USBDeviceState < CONFIGURED_STATE || UCONbits.SUSPND) continue;
		movlw	020h-1
	cpfsgt	((c:_USBDeviceState))^00h,c
	goto	u2611
	goto	u2610

u2611:
	goto	l149
u2610:
	
l3585:
	btfss	((c:3949))^0f00h,c,1	;volatile
	goto	u2621
	goto	u2620
u2621:
	goto	l3587
u2620:
	goto	l149
	line	26
	
l3587:
;system.c: 25: };system.c: 26: if(HID_RT_sel == 0)
	movf	((c:2))^00h,c,w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l3591
u2630:
	line	28
	
l3589:
;system.c: 27: {;system.c: 28: USBInHandle = (volatile void*)USBTransferOnePacket(1,1,(uint8_t *)&ToSendDataBuffer[0],64);
	movlw	low(01h)
	movwf	((c:USBTransferOnePacket@dir))^00h,c
		movlw	low(1344)
	movwf	((c:USBTransferOnePacket@data))^00h,c
	movlw	high(1344)
	movwf	((c:USBTransferOnePacket@data+1))^00h,c

	movlw	low(040h)
	movwf	((c:USBTransferOnePacket@len))^00h,c
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movff	0+?_USBTransferOnePacket,(c:_USBInHandle)
	movff	1+?_USBTransferOnePacket,(c:_USBInHandle+1)
	line	29
;system.c: 29: }
	goto	l157
	line	32
	
l3591:
;system.c: 30: else;system.c: 31: {;system.c: 32: USBOutHandle = (volatile void*)USBTransferOnePacket(1,0,&ReceivedDataBuffer[0],64);
	movlw	low(0)
	movwf	((c:USBTransferOnePacket@dir))^00h,c
		movlw	low(1280)
	movwf	((c:USBTransferOnePacket@data))^00h,c
	movlw	high(1280)
	movwf	((c:USBTransferOnePacket@data+1))^00h,c

	movlw	low(040h)
	movwf	((c:USBTransferOnePacket@len))^00h,c
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movff	0+?_USBTransferOnePacket,(c:_USBOutHandle)
	movff	1+?_USBTransferOnePacket,(c:_USBOutHandle+1)
	line	34
	
l157:
	return	;funcret
	callstack 0
GLOBAL	__end_of_HID_transf
	__end_of_HID_transf:
	signat	_HID_transf,89
	global	_USBDeviceTasks

;; *************** function _USBDeviceTasks *****************
;; Defined at:
;;		line 481 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   29[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_USBCtrlEPAllowStatusStage
;;		_USBCtrlEPService
;;		_USBDeviceInit
;;		_USBIncrement1msInternalTimers
;;		_USBStallHandler
;;		_USBSuspend
;;		_USBWakeFromSuspend
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_main
;;		_HID_transf
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"system/usb_device.c"
	line	481
global __ptext13
__ptext13:
psect	text13
	file	"system/usb_device.c"
	line	481
	global	__size_of_USBDeviceTasks
	__size_of_USBDeviceTasks	equ	__end_of_USBDeviceTasks-_USBDeviceTasks
	
_USBDeviceTasks:
;incstack = 0
	callstack 19
	line	509
	
l3467:
	line	570
;usb_device.c: 483: uint8_t i;;usb_device.c: 509: if (1 != 1)
	
l3475:
;usb_device.c: 548: };usb_device.c: 570: if(USBDeviceState == DETACHED_STATE)
	movf	((c:_USBDeviceState))^00h,c,w
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l3481
u2360:
	line	573
	
l3477:
;usb_device.c: 571: {;usb_device.c: 573: UCON = 0;
	movlw	low(0)
	movwf	((c:3949))^0f00h,c	;volatile
	line	576
;usb_device.c: 576: UIE = 0;
	movlw	low(0)
	movwf	((c:3945))^0f00h,c	;volatile
	line	580
;usb_device.c: 580: { UCFG = 0x10 | 0x00 | 0x04 | 0x02; UEIE = 0x9F; UIE = 0x39 | 0x40 | 0x02; };
	movlw	low(016h)
	movwf	((c:3951))^0f00h,c	;volatile
	movlw	low(09Fh)
	movwf	((c:3947))^0f00h,c	;volatile
	movlw	low(07Bh)
	movwf	((c:3945))^0f00h,c	;volatile
	line	583
;usb_device.c: 583: while(!UCONbits.USBEN){UCONbits.USBEN = 1;}
	goto	l396
	
l397:
	bsf	((c:3949))^0f00h,c,3	;volatile
	
l396:
	btfss	((c:3949))^0f00h,c,3	;volatile
	goto	u2371
	goto	u2370
u2371:
	goto	l397
u2370:
	line	586
	
l3479:
;usb_device.c: 586: USBDeviceState = ATTACHED_STATE;
	movlw	low(01h)
	movwf	((c:_USBDeviceState))^00h,c
	line	594
	
l3481:
;usb_device.c: 591: };usb_device.c: 594: if(USBDeviceState == ATTACHED_STATE)
		decf	((c:_USBDeviceState))^00h,c,w
	btfss	status,2
	goto	u2381
	goto	u2380

u2381:
	goto	l3491
u2380:
	line	605
	
l3483:
;usb_device.c: 595: {;usb_device.c: 605: if(!UCONbits.SE0)
	btfsc	((c:3949))^0f00h,c,5	;volatile
	goto	u2391
	goto	u2390
u2391:
	goto	l3491
u2390:
	line	612
	
l3485:
;usb_device.c: 606: {;usb_device.c: 612: {UIR = 0;};
	movlw	low(0)
	movwf	((c:3944))^0f00h,c	;volatile
	line	616
;usb_device.c: 616: UIE=0;
	movlw	low(0)
	movwf	((c:3945))^0f00h,c	;volatile
	line	618
	
l3487:
;usb_device.c: 618: UIEbits.URSTIE = 1;
	bsf	((c:3945))^0f00h,c,0	;volatile
	line	619
	
l3489:
;usb_device.c: 619: UIEbits.IDLEIE = 1;
	bsf	((c:3945))^0f00h,c,4	;volatile
	line	620
;usb_device.c: 620: USBDeviceState = POWERED_STATE;
	movlw	low(02h)
	movwf	((c:_USBDeviceState))^00h,c
	line	638
	
l3491:
;usb_device.c: 621: };usb_device.c: 622: };usb_device.c: 638: if(UIRbits.ACTVIF && UIEbits.ACTVIE)
	btfss	((c:3944))^0f00h,c,2	;volatile
	goto	u2401
	goto	u2400
u2401:
	goto	l3499
u2400:
	
l3493:
	btfss	((c:3945))^0f00h,c,2	;volatile
	goto	u2411
	goto	u2410
u2411:
	goto	l3499
u2410:
	line	640
	
l3495:
;usb_device.c: 639: {;usb_device.c: 640: (UIR &= 0xFB);
	bcf	(0+(2/8)+(c:3944))^0f00h,c,(2)&7	;volatile
	line	644
	
l3497:
;usb_device.c: 644: USBWakeFromSuspend();
	call	_USBWakeFromSuspend	;wreg free
	line	651
	
l3499:
;usb_device.c: 646: };usb_device.c: 651: if(UCONbits.SUSPND==1)
	btfss	((c:3949))^0f00h,c,1	;volatile
	goto	u2421
	goto	u2420
u2421:
	goto	l402
u2420:
	line	653
	
l3501:
;usb_device.c: 652: {;usb_device.c: 653: {PIR2bits.USBIF = 0;};
	bcf	((c:4001))^0f00h,c,5	;volatile
	line	654
;usb_device.c: 654: return;
	goto	l394
	line	655
	
l402:
	line	667
;usb_device.c: 655: };usb_device.c: 667: if(UIRbits.URSTIF && UIEbits.URSTIE)
	btfss	((c:3944))^0f00h,c,0	;volatile
	goto	u2431
	goto	u2430
u2431:
	goto	l3511
u2430:
	
l3503:
	btfss	((c:3945))^0f00h,c,0	;volatile
	goto	u2441
	goto	u2440
u2441:
	goto	l3511
u2440:
	line	669
	
l3505:
;usb_device.c: 668: {;usb_device.c: 669: USBDeviceInit();
	call	_USBDeviceInit	;wreg free
	line	675
	
l3507:; BSR set to: 0

;usb_device.c: 673: ;;usb_device.c: 675: USBDeviceState = DEFAULT_STATE;
	movlw	low(04h)
	movwf	((c:_USBDeviceState))^00h,c
	line	685
	
l3509:; BSR set to: 0

;usb_device.c: 685: (UIR &= 0xFE);
	bcf	(0+(0/8)+(c:3944))^0f00h,c,(0)&7	;volatile
	line	691
	
l3511:
;usb_device.c: 686: };usb_device.c: 691: if(UIRbits.IDLEIF && UIEbits.IDLEIE)
	btfss	((c:3944))^0f00h,c,4	;volatile
	goto	u2451
	goto	u2450
u2451:
	goto	l3517
u2450:
	
l3513:
	btfss	((c:3945))^0f00h,c,4	;volatile
	goto	u2461
	goto	u2460
u2461:
	goto	l3517
u2460:
	line	698
	
l3515:
;usb_device.c: 692: {;usb_device.c: 698: USBSuspend();
	call	_USBSuspend	;wreg free
	line	712
	
l3517:
;usb_device.c: 700: };usb_device.c: 712: if(UIRbits.SOFIF)
	btfss	((c:3944))^0f00h,c,6	;volatile
	goto	u2471
	goto	u2470
u2471:
	goto	l3535
u2470:
	line	715
	
l3519:
;usb_device.c: 713: {;usb_device.c: 715: if(UIEbits.SOFIE)
	btfss	((c:3945))^0f00h,c,6	;volatile
	goto	u2481
	goto	u2480
u2481:
	goto	l3523
u2480:
	line	717
	
l3521:
;usb_device.c: 716: {;usb_device.c: 717: USER_USB_CALLBACK_EVENT_HANDLER((USB_EVENT)EVENT_SOF,0,1);
	movlw	high(073h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1))^00h,c
	movlw	low(073h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event))^00h,c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata))^00h,c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1))^00h,c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1))^00h,c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size))^00h,c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	719
	
l3523:
;usb_device.c: 718: };usb_device.c: 719: (UIR &= 0xBF);
	bcf	(0+(6/8)+(c:3944))^0f00h,c,(6)&7	;volatile
	line	722
	
l3525:
;usb_device.c: 722: USBIncrement1msInternalTimers();
	call	_USBIncrement1msInternalTimers	;wreg free
	line	739
	
l3527:; BSR set to: 0

;usb_device.c: 739: if(USBStatusStageTimeoutCounter != 0u)
	movf	((c:_USBStatusStageTimeoutCounter))^00h,c,w
	btfsc	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l3531
u2490:
	line	741
	
l3529:; BSR set to: 0

;usb_device.c: 740: {;usb_device.c: 741: USBStatusStageTimeoutCounter--;
	decf	((c:_USBStatusStageTimeoutCounter))^00h,c
	line	748
	
l3531:; BSR set to: 0

;usb_device.c: 742: };usb_device.c: 748: if(USBStatusStageTimeoutCounter == 0)
	movf	((c:_USBStatusStageTimeoutCounter))^00h,c,w
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l3535
u2500:
	line	750
	
l3533:; BSR set to: 0

;usb_device.c: 749: {;usb_device.c: 750: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	line	755
	
l3535:
;usb_device.c: 751: };usb_device.c: 753: };usb_device.c: 755: if(UIRbits.STALLIF && UIEbits.STALLIE)
	btfss	((c:3944))^0f00h,c,5	;volatile
	goto	u2511
	goto	u2510
u2511:
	goto	l3541
u2510:
	
l3537:
	btfss	((c:3945))^0f00h,c,5	;volatile
	goto	u2521
	goto	u2520
u2521:
	goto	l3541
u2520:
	line	757
	
l3539:
;usb_device.c: 756: {;usb_device.c: 757: USBStallHandler();
	call	_USBStallHandler	;wreg free
	line	760
	
l3541:
;usb_device.c: 758: };usb_device.c: 760: if(UIRbits.UERRIF && UIEbits.UERRIE)
	btfss	((c:3944))^0f00h,c,1	;volatile
	goto	u2531
	goto	u2530
u2531:
	goto	l3549
u2530:
	
l3543:
	btfss	((c:3945))^0f00h,c,1	;volatile
	goto	u2541
	goto	u2540
u2541:
	goto	l3549
u2540:
	line	762
	
l3545:
;usb_device.c: 761: {;usb_device.c: 762: USER_USB_CALLBACK_EVENT_HANDLER((USB_EVENT)EVENT_BUS_ERROR,0,1);
	movlw	high(07FFFh)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1))^00h,c
	setf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event))^00h,c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata))^00h,c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1))^00h,c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1))^00h,c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size))^00h,c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	763
	
l3547:
;usb_device.c: 763: {UEIR = 0;};
	movlw	low(0)
	movwf	((c:3946))^0f00h,c	;volatile
	line	778
	
l3549:
;usb_device.c: 771: };usb_device.c: 778: if(USBDeviceState < DEFAULT_STATE)
		movlw	04h-0
	cpfslt	((c:_USBDeviceState))^00h,c
	goto	u2551
	goto	u2550

u2551:
	goto	l411
u2550:
	line	780
	
l3551:
;usb_device.c: 779: {;usb_device.c: 780: {PIR2bits.USBIF = 0;};
	bcf	((c:4001))^0f00h,c,5	;volatile
	line	781
;usb_device.c: 781: return;
	goto	l394
	line	782
	
l411:
	line	787
;usb_device.c: 782: };usb_device.c: 787: if(UIEbits.TRNIE)
	btfss	((c:3945))^0f00h,c,3	;volatile
	goto	u2561
	goto	u2560
u2561:
	goto	l412
u2560:
	line	789
	
l3553:
;usb_device.c: 788: {;usb_device.c: 789: for(i = 0; i < 4u; i++)
	movlw	low(0)
	movwf	((c:USBDeviceTasks@i))^00h,c
	line	790
	
l413:
	line	791
;usb_device.c: 790: {;usb_device.c: 791: if(UIRbits.TRNIF)
	btfss	((c:3944))^0f00h,c,3	;volatile
	goto	u2571
	goto	u2570
u2571:
	goto	l412
u2570:
	line	794
	
l3559:
;usb_device.c: 792: {;usb_device.c: 794: USTATcopy.Val = USTAT;
	movff	(c:3948),(c:_USTATcopy)	;volatile
	line	795
	
l3561:
;usb_device.c: 795: endpoint_number = USTATcopy.endpoint_number;
	rrcf	((c:_USTATcopy))^00h,c,w
	rrcf	wreg,f
	rrcf	wreg,f
	andlw	(1<<4)-1
	movwf	((c:_endpoint_number))^00h,c
	line	797
	
l3563:
;usb_device.c: 797: (UIR &= 0xF7);
	bcf	(0+(3/8)+(c:3944))^0f00h,c,(3)&7	;volatile
	line	802
	
l3565:
;usb_device.c: 802: if(USTATcopy.direction == 0)
	btfsc	((c:_USTATcopy))^00h,c,2
	goto	u2581
	goto	u2580
u2581:
	goto	l3569
u2580:
	line	804
	
l3567:
;usb_device.c: 803: {;usb_device.c: 804: ep_data_out[endpoint_number].bits.ping_pong_state ^= 1;
	movf	((c:_endpoint_number))^00h,c,w
	addlw	low(_ep_data_out)
	movwf	fsr2l
	clrf	fsr2h
	btg	c:indf2,0
	line	805
;usb_device.c: 805: }
	goto	l3571
	line	808
	
l3569:
;usb_device.c: 806: else;usb_device.c: 807: {;usb_device.c: 808: ep_data_in[endpoint_number].bits.ping_pong_state ^= 1;
	movf	((c:_endpoint_number))^00h,c,w
	addlw	low(_ep_data_in)
	movwf	fsr2l
	clrf	fsr2h
	btg	c:indf2,0
	line	814
	
l3571:
;usb_device.c: 809: };usb_device.c: 814: if(endpoint_number == 0)
	movf	((c:_endpoint_number))^00h,c,w
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l3575
u2590:
	line	816
	
l3573:
;usb_device.c: 815: {;usb_device.c: 816: USBCtrlEPService();
	call	_USBCtrlEPService	;wreg free
	line	817
;usb_device.c: 817: }
	goto	l3577
	line	820
	
l3575:
;usb_device.c: 818: else;usb_device.c: 819: {;usb_device.c: 820: USER_USB_CALLBACK_EVENT_HANDLER((USB_EVENT)EVENT_TRANSFER,(uint8_t*)&USTATcopy.Val,0);
	movlw	high(072h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1))^00h,c
	movlw	low(072h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event))^00h,c
		movlw	low(_USTATcopy)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata))^00h,c
	clrf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1))^00h,c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1))^00h,c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size))^00h,c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	789
	
l3577:
	incf	((c:USBDeviceTasks@i))^00h,c
	
l3579:
		movlw	04h-1
	cpfsgt	((c:USBDeviceTasks@i))^00h,c
	goto	u2601
	goto	u2600

u2601:
	goto	l413
u2600:
	line	828
	
l412:
	line	830
;usb_device.c: 826: };usb_device.c: 827: };usb_device.c: 828: };usb_device.c: 830: {PIR2bits.USBIF = 0;};
	bcf	((c:4001))^0f00h,c,5	;volatile
	line	831
	
l394:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBDeviceTasks
	__end_of_USBDeviceTasks:
	signat	_USBDeviceTasks,89
	global	_USBWakeFromSuspend

;; *************** function _USBWakeFromSuspend *****************
;; Defined at:
;;		line 2310 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	line	2310
global __ptext14
__ptext14:
psect	text14
	file	"system/usb_device.c"
	line	2310
	global	__size_of_USBWakeFromSuspend
	__size_of_USBWakeFromSuspend	equ	__end_of_USBWakeFromSuspend-_USBWakeFromSuspend
	
_USBWakeFromSuspend:
;incstack = 0
	callstack 22
	line	2312
	
l3397:
;usb_device.c: 2312: USBBusIsSuspended = 0;
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended))^00h,c
	line	2318
	
l3399:
;usb_device.c: 2318: USER_USB_CALLBACK_EVENT_HANDLER((USB_EVENT)EVENT_RESUME,0,0);
	movlw	high(074h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1))^00h,c
	movlw	low(074h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event))^00h,c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata))^00h,c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1))^00h,c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1))^00h,c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size))^00h,c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2325
	
l3401:
;usb_device.c: 2325: UCONbits.SUSPND = 0;
	bcf	((c:3949))^0f00h,c,1	;volatile
	line	2330
	
l3403:
;usb_device.c: 2330: UIEbits.ACTVIE = 0;
	bcf	((c:3945))^0f00h,c,2	;volatile
	line	2348
;usb_device.c: 2348: while(UIRbits.ACTVIF)
	goto	l3407
	line	2351
	
l3405:
;usb_device.c: 2350: {;usb_device.c: 2351: (UIR &= 0xFB);
	bcf	(0+(2/8)+(c:3944))^0f00h,c,(2)&7	;volatile
	line	2348
	
l3407:
	btfsc	((c:3944))^0f00h,c,2	;volatile
	goto	u2271
	goto	u2270
u2271:
	goto	l3405
u2270:
	line	2354
	
l3409:
;usb_device.c: 2352: };usb_device.c: 2354: USBTicksSinceSuspendEnd = 0;
	movlw	low(0)
	movwf	((c:_USBTicksSinceSuspendEnd))^00h,c
	line	2356
	
l552:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBWakeFromSuspend
	__end_of_USBWakeFromSuspend:
	signat	_USBWakeFromSuspend,89
	global	_USBSuspend

;; *************** function _USBSuspend *****************
;; Defined at:
;;		line 2252 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	line	2252
global __ptext15
__ptext15:
psect	text15
	file	"system/usb_device.c"
	line	2252
	global	__size_of_USBSuspend
	__size_of_USBSuspend	equ	__end_of_USBSuspend-_USBSuspend
	
_USBSuspend:
;incstack = 0
	callstack 22
	line	2277
	
l3411:
;usb_device.c: 2277: UIEbits.ACTVIE = 1;
	bsf	((c:3945))^0f00h,c,2	;volatile
	line	2278
	
l3413:
;usb_device.c: 2278: (UIR &= 0xEF);
	bcf	(0+(4/8)+(c:3944))^0f00h,c,(4)&7	;volatile
	line	2281
	
l3415:
;usb_device.c: 2281: UCONbits.SUSPND = 1;
	bsf	((c:3949))^0f00h,c,1	;volatile
	line	2284
	
l3417:
;usb_device.c: 2284: USBBusIsSuspended = 1;
	movlw	low(01h)
	movwf	((c:_USBBusIsSuspended))^00h,c
	line	2285
	
l3419:
;usb_device.c: 2285: USBTicksSinceSuspendEnd = 0;
	movlw	low(0)
	movwf	((c:_USBTicksSinceSuspendEnd))^00h,c
	line	2292
	
l3421:
;usb_device.c: 2292: USER_USB_CALLBACK_EVENT_HANDLER((USB_EVENT)EVENT_SUSPEND,0,0);
	movlw	high(075h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1))^00h,c
	movlw	low(075h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event))^00h,c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata))^00h,c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1))^00h,c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1))^00h,c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size))^00h,c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2293
	
l546:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBSuspend
	__end_of_USBSuspend:
	signat	_USBSuspend,89
	global	_USBStallHandler

;; *************** function _USBStallHandler *****************
;; Defined at:
;;		line 2209 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	line	2209
global __ptext16
__ptext16:
psect	text16
	file	"system/usb_device.c"
	line	2209
	global	__size_of_USBStallHandler
	__size_of_USBStallHandler	equ	__end_of_USBStallHandler-_USBStallHandler
	
_USBStallHandler:
;incstack = 0
	callstack 25
	line	2221
	
l3433:
;usb_device.c: 2221: if(UEP0bits.EPSTALL == 1)
	btfss	((c:3952))^0f00h,c,0	;volatile
	goto	u2301
	goto	u2300
u2301:
	goto	l541
u2300:
	line	2224
	
l3435:
;usb_device.c: 2222: {;usb_device.c: 2224: if((pBDTEntryEP0OutCurrent->STAT.Val == 0x80) && (pBDTEntryIn[0]->STAT.Val == (0x80|0x04)))
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	128
	xorwf	postinc2,w
	btfss	status,2
	goto	u2311
	goto	u2310

u2311:
	goto	l3443
u2310:
	
l3437:
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	132
	xorwf	postinc2,w
	btfss	status,2
	goto	u2321
	goto	u2320

u2321:
	goto	l3443
u2320:
	line	2227
	
l3439:
;usb_device.c: 2225: {;usb_device.c: 2227: pBDTEntryEP0OutCurrent->STAT.Val = 0x00|(0x08 & 0x08)|0x04;
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	2228
	
l3441:
;usb_device.c: 2228: pBDTEntryEP0OutCurrent->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2230
	
l3443:
;usb_device.c: 2229: };usb_device.c: 2230: UEP0bits.EPSTALL = 0;
	bcf	((c:3952))^0f00h,c,0	;volatile
	line	2231
	
l541:
	line	2233
;usb_device.c: 2231: };usb_device.c: 2233: (UIR &= 0xDF);
	bcf	(0+(5/8)+(c:3944))^0f00h,c,(5)&7	;volatile
	line	2234
	
l543:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBStallHandler
	__end_of_USBStallHandler:
	signat	_USBStallHandler,89
	global	_USBIncrement1msInternalTimers

;; *************** function _USBIncrement1msInternalTimers *****************
;; Defined at:
;;		line 2998 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	line	2998
global __ptext17
__ptext17:
psect	text17
	file	"system/usb_device.c"
	line	2998
	global	__size_of_USBIncrement1msInternalTimers
	__size_of_USBIncrement1msInternalTimers	equ	__end_of_USBIncrement1msInternalTimers-_USBIncrement1msInternalTimers
	
_USBIncrement1msInternalTimers:
;incstack = 0
	callstack 25
	line	3006
	
l3423:
;usb_device.c: 3006: USB1msTickCount++;
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_USB1msTickCount))&0ffh
	movlw	0
	addwfc	((_USB1msTickCount+1))&0ffh
	addwfc	((_USB1msTickCount+2))&0ffh
	addwfc	((_USB1msTickCount+3))&0ffh
	line	3007
	
l3425:; BSR set to: 0

;usb_device.c: 3007: if(USBBusIsSuspended == 0)
	movf	((c:_USBBusIsSuspended))^00h,c,w
	btfss	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l633
u2280:
	line	3009
	
l3427:; BSR set to: 0

;usb_device.c: 3008: {;usb_device.c: 3009: USBTicksSinceSuspendEnd++;
	incf	((c:_USBTicksSinceSuspendEnd))^00h,c
	line	3011
	
l3429:; BSR set to: 0

;usb_device.c: 3011: if(USBTicksSinceSuspendEnd == 0)
	movf	((c:_USBTicksSinceSuspendEnd))^00h,c,w
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l633
u2290:
	line	3013
	
l3431:; BSR set to: 0

;usb_device.c: 3012: {;usb_device.c: 3013: USBTicksSinceSuspendEnd = 255;
	setf	((c:_USBTicksSinceSuspendEnd))^00h,c
	line	3016
	
l633:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_USBIncrement1msInternalTimers
	__end_of_USBIncrement1msInternalTimers:
	signat	_USBIncrement1msInternalTimers,89
	global	_USBDeviceInit

;; *************** function _USBDeviceInit *****************
;; Defined at:
;;		line 281 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_memset
;; This function is called by:
;;		_main
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	line	281
global __ptext18
__ptext18:
psect	text18
	file	"system/usb_device.c"
	line	281
	global	__size_of_USBDeviceInit
	__size_of_USBDeviceInit	equ	__end_of_USBDeviceInit-_USBDeviceInit
	
_USBDeviceInit:; BSR set to: 0

;incstack = 0
	callstack 24
	line	285
	
l3321:
;usb_device.c: 283: uint8_t i;;usb_device.c: 285: {PIE2bits.USBIE = 0;};
	bcf	((c:4000))^0f00h,c,5	;volatile
	line	292
	
l3323:
;usb_device.c: 289: ;;usb_device.c: 292: {UEIR = 0;};
	movlw	low(0)
	movwf	((c:3946))^0f00h,c	;volatile
	line	295
;usb_device.c: 295: {UIR = 0;};
	movlw	low(0)
	movwf	((c:3944))^0f00h,c	;volatile
	line	298
;usb_device.c: 298: UEP0 = 0;
	movlw	low(0)
	movwf	((c:3952))^0f00h,c	;volatile
	line	300
	
l3325:
;usb_device.c: 300: memset((void*)&UEP1,0x00,(1));;
		movlw	low(3953)
	movwf	((c:memset@p1))^00h,c
	movlw	high(3953)
	movwf	((c:memset@p1+1))^00h,c

	movlw	high(0)
	movwf	((c:memset@c+1))^00h,c
	movlw	low(0)
	movwf	((c:memset@c))^00h,c
	movlw	high(01h)
	movwf	((c:memset@n+1))^00h,c
	movlw	low(01h)
	movwf	((c:memset@n))^00h,c
	call	_memset	;wreg free
	line	302
	
l3327:
;usb_device.c: 302: { UCFG = 0x10 | 0x00 | 0x04 | 0x02; UEIE = 0x9F; UIE = 0x39 | 0x40 | 0x02; };
	movlw	low(016h)
	movwf	((c:3951))^0f00h,c	;volatile
	
l3329:
	movlw	low(09Fh)
	movwf	((c:3947))^0f00h,c	;volatile
	
l3331:
	movlw	low(07Bh)
	movwf	((c:3945))^0f00h,c	;volatile
	line	311
	
l3333:
;usb_device.c: 305: ;;usb_device.c: 308: ;;usb_device.c: 311: for(i = 0; i < (sizeof(BDT)/sizeof(BDT_ENTRY)); i++)
	movlw	low(0)
	movwf	((c:USBDeviceInit@i))^00h,c
	line	313
	
l3339:
;usb_device.c: 312: {;usb_device.c: 313: BDT[i].Val = 0x00;
	movf	((c:USBDeviceInit@i))^00h,c,w
	mullw	04h
	movlw	low(1024)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(1024)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	311
	
l3341:
	incf	((c:USBDeviceInit@i))^00h,c
	
l3343:
		movlw	08h-1
	cpfsgt	((c:USBDeviceInit@i))^00h,c
	goto	u2241
	goto	u2240

u2241:
	goto	l3339
u2240:
	
l385:
	line	317
;usb_device.c: 314: };usb_device.c: 317: UCONbits.PPBRST = 1;
	bsf	((c:3949))^0f00h,c,6	;volatile
	line	320
	
l3345:
;usb_device.c: 320: UADDR = 0x00;
	movlw	low(0)
	movwf	((c:3950))^0f00h,c	;volatile
	line	323
	
l3347:
;usb_device.c: 323: UCONbits.PKTDIS = 0;
	bcf	((c:3949))^0f00h,c,4	;volatile
	line	326
	
l3349:
;usb_device.c: 326: UCONbits.PPBRST = 0;
	bcf	((c:3949))^0f00h,c,6	;volatile
	line	331
	
l3351:
;usb_device.c: 330: {;usb_device.c: 331: (UIR &= 0xF7);
	bcf	(0+(3/8)+(c:3944))^0f00h,c,(3)&7	;volatile
	line	333
	
l3353:
;usb_device.c: 333: inPipes[0].info.Val = 0;
	movlw	low(0)
	movwf	(0+((c:_inPipes)+03h))^00h,c
	line	334
	
l3355:
;usb_device.c: 334: outPipes[0].info.Val = 0;
	movlw	low(0)
	movwf	(0+((c:_outPipes)+03h))^00h,c
	line	335
	
l3357:
;usb_device.c: 335: outPipes[0].wCount.Val = 0;
	movlw	high(0)
	movwf	(1+((c:_outPipes)+04h))^00h,c
	movlw	low(0)
	movwf	(0+((c:_outPipes)+04h))^00h,c
	line	336
	
l3359:
;usb_device.c: 336: }while(UIRbits.TRNIF == 1);
	btfsc	((c:3944))^0f00h,c,3	;volatile
	goto	u2251
	goto	u2250
u2251:
	goto	l3351
u2250:
	line	340
	
l3361:
;usb_device.c: 340: USBStatusStageEnabledFlag1 = 1;
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1))^00h,c	;volatile
	line	341
;usb_device.c: 341: USBStatusStageEnabledFlag2 = 1;
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2))^00h,c	;volatile
	line	343
;usb_device.c: 343: USBDeferINDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets))^00h,c	;volatile
	line	344
;usb_device.c: 344: USBDeferOUTDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets))^00h,c	;volatile
	line	345
;usb_device.c: 345: USBBusIsSuspended = 0;
	movlw	low(0)
	movwf	((c:_USBBusIsSuspended))^00h,c
	line	349
;usb_device.c: 349: for(i = 0; i < (uint8_t)(1+1u); i++)
	movlw	low(0)
	movwf	((c:USBDeviceInit@i))^00h,c
	line	351
	
l3367:
;usb_device.c: 350: {;usb_device.c: 351: pBDTEntryIn[i] = 0u;
	movf	((c:USBDeviceInit@i))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryIn)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	352
;usb_device.c: 352: pBDTEntryOut[i] = 0u;
	movf	((c:USBDeviceInit@i))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryOut)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	353
	
l3369:
;usb_device.c: 353: ep_data_in[i].Val = 0u;
	movf	((c:USBDeviceInit@i))^00h,c,w
	addlw	low(_ep_data_in)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	354
	
l3371:
;usb_device.c: 354: ep_data_out[i].Val = 0u;
	movf	((c:USBDeviceInit@i))^00h,c,w
	addlw	low(_ep_data_out)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	349
	
l3373:
	incf	((c:USBDeviceInit@i))^00h,c
	
l3375:
		movlw	02h-1
	cpfsgt	((c:USBDeviceInit@i))^00h,c
	goto	u2261
	goto	u2260

u2261:
	goto	l3367
u2260:
	line	358
	
l3377:
;usb_device.c: 355: };usb_device.c: 358: pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[2];
		movlw	low(1024+08h)
	movwf	((c:_pBDTEntryIn))^00h,c
	movlw	high(1024+08h)
	movwf	((c:_pBDTEntryIn+1))^00h,c

	line	360
	
l3379:
;usb_device.c: 360: UEP0 = 0x06|0x10;
	movlw	low(016h)
	movwf	((c:3952))^0f00h,c	;volatile
	line	362
	
l3381:
;usb_device.c: 362: BDT[0].ADR = ((uint16_t)(&SetupPkt));
	movlw	high(0420h)
	movlb	4	; () banked
	movwf	(1+(1024+02h))&0ffh	;volatile
	movlw	low(0420h)
	movwf	(0+(1024+02h))&0ffh	;volatile
	line	363
	
l3383:; BSR set to: 4

;usb_device.c: 363: BDT[0].CNT = 8;
	movlw	low(08h)
	movwf	(0+(1024+01h))&0ffh	;volatile
	line	364
	
l3385:; BSR set to: 4

;usb_device.c: 364: BDT[0].STAT.Val = 0x00|0x04;
	movlw	low(04h)
	movwf	((1024))&0ffh	;volatile
	line	365
	
l3387:; BSR set to: 4

;usb_device.c: 365: BDT[0].STAT.Val |= 0x80;
	bsf	(0+(7/8)+(1024))&0ffh,(7)&7	;volatile
	line	368
	
l3389:; BSR set to: 4

;usb_device.c: 368: USBActiveConfiguration = 0;
	movlw	low(0)
	movwf	((c:_USBActiveConfiguration))^00h,c
	line	370
	
l3391:; BSR set to: 4

;usb_device.c: 370: USB1msTickCount = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_USB1msTickCount))&0ffh
	movlw	high(0)
	movwf	((_USB1msTickCount+1))&0ffh
	movlw	low highword(0)
	movwf	((_USB1msTickCount+2))&0ffh
	movlw	high highword(0)
	movwf	((_USB1msTickCount+3))&0ffh
	line	371
	
l3393:; BSR set to: 0

;usb_device.c: 371: USBTicksSinceSuspendEnd = 0;
	movlw	low(0)
	movwf	((c:_USBTicksSinceSuspendEnd))^00h,c
	line	374
	
l3395:; BSR set to: 0

;usb_device.c: 374: USBDeviceState = DETACHED_STATE;
	movlw	low(0)
	movwf	((c:_USBDeviceState))^00h,c
	line	375
	
l390:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_USBDeviceInit
	__end_of_USBDeviceInit:
	signat	_USBDeviceInit,89
	global	_USBCtrlEPService

;; *************** function _USBCtrlEPService *****************
;; Defined at:
;;		line 2379 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_USBCtrlTrfInHandler
;;		_USBCtrlTrfOutHandler
;;		_USBCtrlTrfSetupHandler
;;		_memcpy
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	line	2379
global __ptext19
__ptext19:
psect	text19
	file	"system/usb_device.c"
	line	2379
	global	__size_of_USBCtrlEPService
	__size_of_USBCtrlEPService	equ	__end_of_USBCtrlEPService-_USBCtrlEPService
	
_USBCtrlEPService:; BSR set to: 0

;incstack = 0
	callstack 19
	line	2385
	
l3445:
;usb_device.c: 2385: USBStatusStageTimeoutCounter = (uint8_t)45;
	movlw	low(02Dh)
	movwf	((c:_USBStatusStageTimeoutCounter))^00h,c
	line	2389
	
l3447:
;usb_device.c: 2389: if((USTATcopy.Val & ~0x02) == 0x00)
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0
	movlw	0FDh
	andwf	(??_USBCtrlEPService+0+0)^00h,c
	btfss	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l3463
u2330:
	line	2393
	
l3449:
;usb_device.c: 2390: {;usb_device.c: 2393: pBDTEntryEP0OutCurrent = (volatile BDT_ENTRY*)&BDT[(USTATcopy.Val & 0x7E)>>1];
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0
	bcf	status,0
	rrcf	(??_USBCtrlEPService+0+0)^00h,c

	movlw	03Fh
	andwf	(??_USBCtrlEPService+0+0)^00h,c
	movf	(??_USBCtrlEPService+0+0)^00h,c,w
	mullw	04h
	movlw	low(1024)
	addwf	(prodl)^0f00h,c,w
	movwf	((c:_pBDTEntryEP0OutCurrent))^00h,c
	movlw	high(1024)
	addwfc	prod+1,w
	movwf	1+((c:_pBDTEntryEP0OutCurrent))^00h,c
	line	2401
	
l3451:
;usb_device.c: 2401: pBDTEntryEP0OutNext = pBDTEntryEP0OutCurrent;
		movff	(c:_pBDTEntryEP0OutCurrent),(c:_pBDTEntryEP0OutNext)
	movff	(c:_pBDTEntryEP0OutCurrent+1),(c:_pBDTEntryEP0OutNext+1)

	line	2403
	
l3453:
;usb_device.c: 2403: pBDTEntryEP0OutNext = (volatile BDT_ENTRY*)(((uintptr_t)pBDTEntryEP0OutNext) ^ 0x0004);
	movlw	04h
	xorwf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	movwf	((c:_pBDTEntryEP0OutNext))^00h,c
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	movwf	1+((c:_pBDTEntryEP0OutNext))^00h,c
	line	2406
	
l3455:
;usb_device.c: 2406: if(pBDTEntryEP0OutCurrent->STAT.PID == 0xD)
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	rrcf	(c:indf2)^00h,c,w
	rrcf	wreg,f
	andlw	(1<<4)-1
	xorlw	0Dh
	btfss	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l3461
u2340:
	line	2412
	
l3457:
;usb_device.c: 2407: {;usb_device.c: 2412: memcpy((uint8_t*)&SetupPkt, (uint8_t*)((void *)(pBDTEntryEP0OutCurrent->ADR)), 8);
		movlw	low(1056)
	movwf	((c:memcpy@d1))^00h,c
	movlw	high(1056)
	movwf	((c:memcpy@d1+1))^00h,c

	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,(c:memcpy@s1)
	movff	postdec2,(c:memcpy@s1+1)
	movlw	high(08h)
	movwf	((c:memcpy@n+1))^00h,c
	movlw	low(08h)
	movwf	((c:memcpy@n))^00h,c
	call	_memcpy	;wreg free
	line	2415
	
l3459:
;usb_device.c: 2415: USBCtrlTrfSetupHandler();
	call	_USBCtrlTrfSetupHandler	;wreg free
	line	2416
;usb_device.c: 2416: }
	goto	l560
	line	2420
	
l3461:
;usb_device.c: 2417: else;usb_device.c: 2418: {;usb_device.c: 2420: USBCtrlTrfOutHandler();
	call	_USBCtrlTrfOutHandler	;wreg free
	goto	l560
	line	2423
	
l3463:
;usb_device.c: 2423: else if((USTATcopy.Val & ~0x02) == 0x04)
	movf	((c:_USTATcopy))^00h,c,w
	andlw	low(0FDh)
	xorlw	04h
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l560
u2350:
	line	2427
	
l3465:
;usb_device.c: 2424: {;usb_device.c: 2427: USBCtrlTrfInHandler();
	call	_USBCtrlTrfInHandler	;wreg free
	line	2430
	
l560:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCtrlEPService
	__end_of_USBCtrlEPService:
	signat	_USBCtrlEPService,89
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 27 in file "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\sources\c90\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              2    0[COMRAM] PTR void 
;;		 -> SetupPkt(8), 
;;  s1              2    2[COMRAM] PTR const void 
;;		 -> CtrlTrfData(8), RAM(2047), SetupPkt(8), 
;;  n               2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s               2    8[COMRAM] PTR const unsigned char 
;;		 -> CtrlTrfData(8), RAM(2047), SetupPkt(8), 
;;  d               2    6[COMRAM] PTR unsigned char 
;;		 -> SetupPkt(8), 
;;  tmp             1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=2
	file	"D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\sources\c90\common\memcpy.c"
	line	27
global __ptext20
__ptext20:
psect	text20
	file	"D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\sources\c90\common\memcpy.c"
	line	27
	global	__size_of_memcpy
	__size_of_memcpy	equ	__end_of_memcpy-_memcpy
	
_memcpy:
;incstack = 0
	callstack 24
	line	34
	
l3229:
		movff	(c:memcpy@s1),(c:memcpy@s)
	movff	(c:memcpy@s1+1),(c:memcpy@s+1)

	line	35
		movff	(c:memcpy@d1),(c:memcpy@d)
	movff	(c:memcpy@d1+1),(c:memcpy@d+1)

	line	36
	goto	l3239
	line	37
	
l3231:
	movff	(c:memcpy@s),fsr2l
	movff	(c:memcpy@s+1),fsr2h
	movf	indf2,w
	movwf	((c:memcpy@tmp))^00h,c
	
l3233:
	infsnz	((c:memcpy@s))^00h,c
	incf	((c:memcpy@s+1))^00h,c
	line	38
	
l3235:
	movff	(c:memcpy@d),fsr2l
	movff	(c:memcpy@d+1),fsr2h
	movff	(c:memcpy@tmp),indf2

	
l3237:
	infsnz	((c:memcpy@d))^00h,c
	incf	((c:memcpy@d+1))^00h,c
	line	36
	
l3239:
	decf	((c:memcpy@n))^00h,c
	btfss	status,0
	decf	((c:memcpy@n+1))^00h,c
		incf	((c:memcpy@n))^00h,c,w
	bnz	u2151
	incf	((c:memcpy@n+1))^00h,c,w
	btfss	status,2
	goto	u2151
	goto	u2150

u2151:
	goto	l3231
u2150:
	line	41
	
l1375:
	return	;funcret
	callstack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12410
	global	_USBCtrlTrfSetupHandler

;; *************** function _USBCtrlTrfSetupHandler *****************
;; Defined at:
;;		line 2472 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_USBCheckStdRequest
;;		_USBCtrlEPServiceComplete
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	file	"system/usb_device.c"
	line	2472
global __ptext21
__ptext21:
psect	text21
	file	"system/usb_device.c"
	line	2472
	global	__size_of_USBCtrlTrfSetupHandler
	__size_of_USBCtrlTrfSetupHandler	equ	__end_of_USBCtrlTrfSetupHandler-_USBCtrlTrfSetupHandler
	
_USBCtrlTrfSetupHandler:
;incstack = 0
	callstack 19
	line	2477
	
l3241:
;usb_device.c: 2477: shortPacketStatus = 0;
	movlw	low(0)
	movwf	((c:_shortPacketStatus))^00h,c
	line	2478
;usb_device.c: 2478: USBDeferStatusStagePacket = 0;
	movlw	low(0)
	movwf	((c:_USBDeferStatusStagePacket))^00h,c	;volatile
	line	2479
;usb_device.c: 2479: USBDeferINDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets))^00h,c	;volatile
	line	2480
;usb_device.c: 2480: USBDeferOUTDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets))^00h,c	;volatile
	line	2481
;usb_device.c: 2481: BothEP0OutUOWNsSet = 0;
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet))^00h,c
	line	2482
;usb_device.c: 2482: controlTransferState = 0;
	movlw	low(0)
	movwf	((c:_controlTransferState))^00h,c
	line	2491
	
l3243:
;usb_device.c: 2491: pBDTEntryIn[0]->STAT.Val &= ~(0x80);
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2493
	
l3245:
;usb_device.c: 2493: pBDTEntryIn[0] = (volatile BDT_ENTRY*)(((uintptr_t)pBDTEntryIn[0]) ^ 0x0004);
	movlw	04h
	xorwf	((c:_pBDTEntryIn))^00h,c,w
	movwf	((c:_pBDTEntryIn))^00h,c
	movf	((c:_pBDTEntryIn+1))^00h,c,w
	movwf	1+((c:_pBDTEntryIn))^00h,c
	line	2494
	
l3247:
;usb_device.c: 2494: pBDTEntryIn[0]->STAT.Val &= ~(0x80);
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2495
	
l3249:
;usb_device.c: 2495: pBDTEntryIn[0] = (volatile BDT_ENTRY*)(((uintptr_t)pBDTEntryIn[0]) ^ 0x0004);
	movlw	04h
	xorwf	((c:_pBDTEntryIn))^00h,c,w
	movwf	((c:_pBDTEntryIn))^00h,c
	movf	((c:_pBDTEntryIn+1))^00h,c,w
	movwf	1+((c:_pBDTEntryIn))^00h,c
	line	2496
	
l3251:
;usb_device.c: 2496: pBDTEntryEP0OutNext->STAT.Val &= ~(0x80);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2498
	
l3253:
;usb_device.c: 2498: inPipes[0].info.Val = 0;
	movlw	low(0)
	movwf	(0+((c:_inPipes)+03h))^00h,c
	line	2499
	
l3255:
;usb_device.c: 2499: inPipes[0].wCount.Val = 0;
	movlw	high(0)
	movwf	(1+((c:_inPipes)+04h))^00h,c
	movlw	low(0)
	movwf	(0+((c:_inPipes)+04h))^00h,c
	line	2500
	
l3257:
;usb_device.c: 2500: outPipes[0].info.Val = 0;
	movlw	low(0)
	movwf	(0+((c:_outPipes)+03h))^00h,c
	line	2501
	
l3259:
;usb_device.c: 2501: outPipes[0].wCount.Val = 0;
	movlw	high(0)
	movwf	(1+((c:_outPipes)+04h))^00h,c
	movlw	low(0)
	movwf	(0+((c:_outPipes)+04h))^00h,c
	line	2507
	
l3261:
;usb_device.c: 2507: USBCheckStdRequest();
	call	_USBCheckStdRequest	;wreg free
	line	2508
	
l3263:
;usb_device.c: 2508: USER_USB_CALLBACK_EVENT_HANDLER((USB_EVENT)EVENT_EP0_REQUEST,0,0);
	movlw	high(03h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1))^00h,c
	movlw	low(03h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event))^00h,c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata))^00h,c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1))^00h,c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1))^00h,c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size))^00h,c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2521
	
l3265:
;usb_device.c: 2521: USBCtrlEPServiceComplete();
	call	_USBCtrlEPServiceComplete	;wreg free
	line	2522
	
l563:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCtrlTrfSetupHandler
	__end_of_USBCtrlTrfSetupHandler:
	signat	_USBCtrlTrfSetupHandler,89
	global	_USBCtrlEPServiceComplete

;; *************** function _USBCtrlEPServiceComplete *****************
;; Defined at:
;;		line 1620 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_USBCtrlEPAllowDataStage
;;		_USBCtrlEPAllowStatusStage
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	line	1620
global __ptext22
__ptext22:
psect	text22
	file	"system/usb_device.c"
	line	1620
	global	__size_of_USBCtrlEPServiceComplete
	__size_of_USBCtrlEPServiceComplete	equ	__end_of_USBCtrlEPServiceComplete-_USBCtrlEPServiceComplete
	
_USBCtrlEPServiceComplete:
;incstack = 0
	callstack 21
	line	1626
	
l3097:
;usb_device.c: 1626: UCONbits.PKTDIS = 0;
	bcf	((c:3949))^0f00h,c,4	;volatile
	line	1632
;usb_device.c: 1632: if(inPipes[0].info.bits.busy == 0)
	btfsc	(0+((c:_inPipes)+03h))^00h,c,7
	goto	u2021
	goto	u2020
u2021:
	goto	l464
u2020:
	line	1634
	
l3099:
;usb_device.c: 1633: {;usb_device.c: 1634: if(outPipes[0].info.bits.busy == 1)
	btfss	(0+((c:_outPipes)+03h))^00h,c,7
	goto	u2031
	goto	u2030
u2031:
	goto	l3109
u2030:
	line	1636
	
l3101:
;usb_device.c: 1635: {;usb_device.c: 1636: controlTransferState = 2;
	movlw	low(02h)
	movwf	((c:_controlTransferState))^00h,c
	line	1647
;usb_device.c: 1647: if(USBDeferOUTDataStagePackets == 0)
	movf	((c:_USBDeferOUTDataStagePackets))^00h,c,w	;volatile
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l3105
u2040:
	line	1649
	
l3103:
;usb_device.c: 1648: {;usb_device.c: 1649: USBCtrlEPAllowDataStage();
	call	_USBCtrlEPAllowDataStage	;wreg free
	line	1654
	
l3105:
;usb_device.c: 1650: };usb_device.c: 1654: USBStatusStageEnabledFlag2 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2))^00h,c	;volatile
	line	1655
	
l3107:
;usb_device.c: 1655: USBStatusStageEnabledFlag1 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1))^00h,c	;volatile
	line	1656
;usb_device.c: 1656: }
	goto	l474
	line	1663
	
l3109:
;usb_device.c: 1657: else;usb_device.c: 1658: {;usb_device.c: 1663: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1664
;usb_device.c: 1664: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	1665
	
l3111:
;usb_device.c: 1665: pBDTEntryEP0OutNext->STAT.Val = 0x00|(0x08 & 0x08)|0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	1666
	
l3113:
;usb_device.c: 1666: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1667
;usb_device.c: 1667: pBDTEntryIn[0]->STAT.Val = 0x04;
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1668
	
l3115:
;usb_device.c: 1668: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	l474
	line	1671
	
l464:
	line	1673
;usb_device.c: 1671: else;usb_device.c: 1672: {;usb_device.c: 1673: if(SetupPkt.DataDir == (0x80>>7))
	movlb	4	; () banked
	btfss	((1056))&0ffh,7	;volatile
	goto	u2051
	goto	u2050
u2051:
	goto	l3129
u2050:
	line	1675
	
l3117:; BSR set to: 4

;usb_device.c: 1674: {;usb_device.c: 1675: controlTransferState = 1;
	movlw	low(01h)
	movwf	((c:_controlTransferState))^00h,c
	line	1689
;usb_device.c: 1689: if(USBDeferINDataStagePackets == 0)
	movf	((c:_USBDeferINDataStagePackets))^00h,c,w	;volatile
	btfss	status,2
	goto	u2061
	goto	u2060
u2061:
	goto	l3121
u2060:
	line	1691
	
l3119:; BSR set to: 4

;usb_device.c: 1690: {;usb_device.c: 1691: USBCtrlEPAllowDataStage();
	call	_USBCtrlEPAllowDataStage	;wreg free
	line	1714
	
l3121:
;usb_device.c: 1692: };usb_device.c: 1714: USBStatusStageEnabledFlag2 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2))^00h,c	;volatile
	line	1715
	
l3123:
;usb_device.c: 1715: USBStatusStageEnabledFlag1 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1))^00h,c	;volatile
	line	1716
	
l3125:
;usb_device.c: 1716: if(USBDeferStatusStagePacket == 0)
	movf	((c:_USBDeferStatusStagePacket))^00h,c,w	;volatile
	btfss	status,2
	goto	u2071
	goto	u2070
u2071:
	goto	l474
u2070:
	line	1718
	
l3127:
;usb_device.c: 1717: {;usb_device.c: 1718: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	l474
	line	1733
	
l3129:; BSR set to: 4

;usb_device.c: 1721: else;usb_device.c: 1722: {;usb_device.c: 1733: controlTransferState = 2;
	movlw	low(02h)
	movwf	((c:_controlTransferState))^00h,c
	line	1736
	
l3131:; BSR set to: 4

;usb_device.c: 1736: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1737
	
l3133:; BSR set to: 4

;usb_device.c: 1737: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	1738
	
l3135:; BSR set to: 4

;usb_device.c: 1738: pBDTEntryEP0OutNext->STAT.Val = 0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1739
	
l3137:; BSR set to: 4

;usb_device.c: 1739: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1742
	
l3139:; BSR set to: 4

;usb_device.c: 1742: USBStatusStageEnabledFlag2 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag2))^00h,c	;volatile
	line	1743
	
l3141:; BSR set to: 4

;usb_device.c: 1743: USBStatusStageEnabledFlag1 = 0;
	movlw	low(0)
	movwf	((c:_USBStatusStageEnabledFlag1))^00h,c	;volatile
	line	1744
	
l3143:; BSR set to: 4

;usb_device.c: 1744: if(USBDeferStatusStagePacket == 0)
	movf	((c:_USBDeferStatusStagePacket))^00h,c,w	;volatile
	btfss	status,2
	goto	u2081
	goto	u2080
u2081:
	goto	l474
u2080:
	goto	l3127
	line	1752
	
l474:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCtrlEPServiceComplete
	__end_of_USBCtrlEPServiceComplete:
	signat	_USBCtrlEPServiceComplete,89
	global	_USBCtrlEPAllowDataStage

;; *************** function _USBCtrlEPAllowDataStage *****************
;; Defined at:
;;		line 1492 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlEPServiceComplete
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	line	1492
global __ptext23
__ptext23:
psect	text23
	file	"system/usb_device.c"
	line	1492
	global	__size_of_USBCtrlEPAllowDataStage
	__size_of_USBCtrlEPAllowDataStage	equ	__end_of_USBCtrlEPAllowDataStage-_USBCtrlEPAllowDataStage
	
_USBCtrlEPAllowDataStage:
;incstack = 0
	callstack 21
	line	1494
	
l2889:
;usb_device.c: 1494: USBDeferINDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferINDataStagePackets))^00h,c	;volatile
	line	1495
;usb_device.c: 1495: USBDeferOUTDataStagePackets = 0;
	movlw	low(0)
	movwf	((c:_USBDeferOUTDataStagePackets))^00h,c	;volatile
	line	1497
	
l2891:
;usb_device.c: 1497: if(controlTransferState == 2)
		movlw	2
	xorwf	((c:_controlTransferState))^00h,c,w
	btfss	status,2
	goto	u1681
	goto	u1680

u1681:
	goto	l2899
u1680:
	line	1500
	
l2893:
;usb_device.c: 1498: {;usb_device.c: 1500: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1501
;usb_device.c: 1501: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&CtrlTrfData));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0428h)
	movwf	postinc2,c
	movlw	high(0428h)
	movwf	postdec2,c
	line	1502
	
l2895:
;usb_device.c: 1502: pBDTEntryEP0OutNext->STAT.Val = 0x40|(0x08 & 0x08);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1503
	
l2897:
;usb_device.c: 1503: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1504
;usb_device.c: 1504: }
	goto	l456
	line	1509
	
l2899:
;usb_device.c: 1505: else;usb_device.c: 1506: {;usb_device.c: 1509: if(SetupPkt.wLength < inPipes[0].wCount.Val)
		movf	(0+((c:_inPipes)+04h))^00h,c,w
	movlb	4	; () banked
	subwf	(0+(1056+06h))&0ffh,w	;volatile
	movf	(1+((c:_inPipes)+04h))^00h,c,w
	subwfb	(1+(1056+06h))&0ffh,w	;volatile
	btfsc	status,0
	goto	u1691
	goto	u1690

u1691:
	goto	l2903
u1690:
	line	1511
	
l2901:; BSR set to: 4

;usb_device.c: 1510: {;usb_device.c: 1511: inPipes[0].wCount.Val = SetupPkt.wLength;
	movff	0+(1056+06h),0+((c:_inPipes)+04h)	;volatile
	movff	1+(1056+06h),1+((c:_inPipes)+04h)	;volatile
	line	1513
	
l2903:; BSR set to: 4

;usb_device.c: 1512: };usb_device.c: 1513: USBCtrlTrfTxService();
	call	_USBCtrlTrfTxService	;wreg free
	line	1518
	
l2905:
;usb_device.c: 1518: pBDTEntryIn[0]->ADR = ((uint16_t)(&CtrlTrfData));
	lfsr	2,02h
	movf	((c:_pBDTEntryIn))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryIn+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0428h)
	movwf	postinc2,c
	movlw	high(0428h)
	movwf	postdec2,c
	line	1519
	
l2907:
;usb_device.c: 1519: pBDTEntryIn[0]->STAT.Val = 0x40|(0x08 & 0x08);
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1520
	
l2909:
;usb_device.c: 1520: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1522
	
l456:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCtrlEPAllowDataStage
	__end_of_USBCtrlEPAllowDataStage:
	signat	_USBCtrlEPAllowDataStage,89
	global	_USBCheckStdRequest

;; *************** function _USBCheckStdRequest *****************
;; Defined at:
;;		line 2693 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_USBStdFeatureReqHandler
;;		_USBStdGetDscHandler
;;		_USBStdGetStatusHandler
;;		_USBStdSetCfgHandler
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	line	2693
global __ptext24
__ptext24:
psect	text24
	file	"system/usb_device.c"
	line	2693
	global	__size_of_USBCheckStdRequest
	__size_of_USBCheckStdRequest	equ	__end_of_USBCheckStdRequest-_USBCheckStdRequest
	
_USBCheckStdRequest:
;incstack = 0
	callstack 19
	line	2695
	
l3191:
;usb_device.c: 2695: if(SetupPkt.RequestType != (0x00>>5)) return;
	movlb	4	; () banked
	swapf	((1056))&0ffh,w	;volatile
	rrcf	wreg,f
	andlw	(1<<2)-1
	iorlw	0
	btfsc	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l3227
u2140:
	goto	l588
	line	2699
;usb_device.c: 2698: {;usb_device.c: 2699: case 5:
	
l590:; BSR set to: 4

	line	2700
;usb_device.c: 2700: inPipes[0].info.bits.busy = 1;
	bsf	(0+((c:_inPipes)+03h))^00h,c,7
	line	2701
	
l3195:; BSR set to: 4

;usb_device.c: 2701: USBDeviceState = ADR_PENDING_STATE;
	movlw	low(08h)
	movwf	((c:_USBDeviceState))^00h,c
	line	2703
;usb_device.c: 2703: break;
	goto	l588
	line	2705
	
l3197:; BSR set to: 4

;usb_device.c: 2705: USBStdGetDscHandler();
	call	_USBStdGetDscHandler	;wreg free
	line	2706
;usb_device.c: 2706: break;
	goto	l588
	line	2708
	
l3199:; BSR set to: 4

;usb_device.c: 2708: USBStdSetCfgHandler();
	call	_USBStdSetCfgHandler	;wreg free
	line	2709
;usb_device.c: 2709: break;
	goto	l588
	line	2711
	
l3201:; BSR set to: 4

;usb_device.c: 2711: inPipes[0].pSrc.bRam = (uint8_t*)&USBActiveConfiguration;
		movlw	low(_USBActiveConfiguration)
	movwf	((c:_inPipes))^00h,c
	clrf	((c:_inPipes+1))^00h,c

	line	2712
	
l3203:; BSR set to: 4

;usb_device.c: 2712: inPipes[0].info.bits.ctrl_trf_mem = 0x01;
	bsf	(0+((c:_inPipes)+03h))^00h,c,0
	line	2713
	
l3205:; BSR set to: 4

;usb_device.c: 2713: inPipes[0].wCount.v[0] = 1;
	movlw	low(01h)
	movwf	(0+((c:_inPipes)+04h))^00h,c
	line	2714
	
l3207:; BSR set to: 4

;usb_device.c: 2714: inPipes[0].info.bits.busy = 1;
	bsf	(0+((c:_inPipes)+03h))^00h,c,7
	line	2715
;usb_device.c: 2715: break;
	goto	l588
	line	2717
	
l3209:; BSR set to: 4

;usb_device.c: 2717: USBStdGetStatusHandler();
	call	_USBStdGetStatusHandler	;wreg free
	line	2718
;usb_device.c: 2718: break;
	goto	l588
	line	2721
	
l3211:; BSR set to: 4

;usb_device.c: 2720: case 3:;usb_device.c: 2721: USBStdFeatureReqHandler();
	call	_USBStdFeatureReqHandler	;wreg free
	line	2722
;usb_device.c: 2722: break;
	goto	l588
	line	2724
	
l3213:; BSR set to: 4

;usb_device.c: 2724: inPipes[0].pSrc.bRam = (uint8_t*)&USBAlternateInterface[SetupPkt.bIntfID];
	movf	(0+(1056+04h))&0ffh,w	;volatile
	addlw	low(_USBAlternateInterface)
	movwf	(??_USBCheckStdRequest+0+0)^00h,c
		movff	(??_USBCheckStdRequest+0+0),(c:_inPipes)
	clrf	((c:_inPipes+1))^00h,c

	goto	l3203
	line	2729
;usb_device.c: 2729: case 11:
	
l599:; BSR set to: 4

	line	2730
;usb_device.c: 2730: inPipes[0].info.bits.busy = 1;
	bsf	(0+((c:_inPipes)+03h))^00h,c,7
	line	2731
	
l3221:; BSR set to: 4

;usb_device.c: 2731: USBAlternateInterface[SetupPkt.bIntfID] = SetupPkt.bAltID;
	movf	(0+(1056+04h))&0ffh,w	;volatile
	addlw	low(_USBAlternateInterface)
	movwf	fsr2l
	clrf	fsr2h
	movff	0+(1056+02h),indf2	;volatile

	line	2732
;usb_device.c: 2732: break;
	goto	l588
	line	2734
	
l3223:; BSR set to: 4

;usb_device.c: 2734: USER_USB_CALLBACK_EVENT_HANDLER((USB_EVENT)EVENT_SET_DESCRIPTOR,0,0);
	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1))^00h,c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event))^00h,c
		movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata))^00h,c
	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1))^00h,c

	movlw	high(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1))^00h,c
	movlw	low(0)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size))^00h,c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2735
;usb_device.c: 2735: break;
	goto	l588
	line	2697
	
l3227:; BSR set to: 4

	movf	(0+(1056+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "simple"
; Number of cases is 11, Range of values is 0 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l3209
	xorlw	1^0	; case 1
	skipnz
	goto	l3211
	xorlw	3^1	; case 3
	skipnz
	goto	l3211
	xorlw	5^3	; case 5
	skipnz
	goto	l590
	xorlw	6^5	; case 6
	skipnz
	goto	l3197
	xorlw	7^6	; case 7
	skipnz
	goto	l3223
	xorlw	8^7	; case 8
	skipnz
	goto	l3201
	xorlw	9^8	; case 9
	skipnz
	goto	l3199
	xorlw	10^9	; case 10
	skipnz
	goto	l3213
	xorlw	11^10	; case 11
	skipnz
	goto	l599
	xorlw	12^11	; case 12
	skipnz
	goto	l588
	goto	l588

	line	2740
	
l588:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCheckStdRequest
	__end_of_USBCheckStdRequest:
	signat	_USBCheckStdRequest,89
	global	_USBStdSetCfgHandler

;; *************** function _USBStdSetCfgHandler *****************
;; Defined at:
;;		line 1972 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		_memset
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	line	1972
global __ptext25
__ptext25:
psect	text25
	file	"system/usb_device.c"
	line	1972
	global	__size_of_USBStdSetCfgHandler
	__size_of_USBStdSetCfgHandler	equ	__end_of_USBStdSetCfgHandler-_USBStdSetCfgHandler
	
_USBStdSetCfgHandler:
;incstack = 0
	callstack 19
	line	1977
	
l2911:
;usb_device.c: 1974: uint8_t i;;usb_device.c: 1977: inPipes[0].info.bits.busy = 1;
	bsf	(0+((c:_inPipes)+03h))^00h,c,7
	line	1980
	
l2913:
;usb_device.c: 1980: memset((void*)&UEP1,0x00,(1));;
		movlw	low(3953)
	movwf	((c:memset@p1))^00h,c
	movlw	high(3953)
	movwf	((c:memset@p1+1))^00h,c

	movlw	high(0)
	movwf	((c:memset@c+1))^00h,c
	movlw	low(0)
	movwf	((c:memset@c))^00h,c
	movlw	high(01h)
	movwf	((c:memset@n+1))^00h,c
	movlw	low(01h)
	movwf	((c:memset@n))^00h,c
	call	_memset	;wreg free
	line	1983
;usb_device.c: 1983: memset((void*)&BDT[0], 0x00, sizeof(BDT));
		movlw	low(1024)
	movwf	((c:memset@p1))^00h,c
	movlw	high(1024)
	movwf	((c:memset@p1+1))^00h,c

	movlw	high(0)
	movwf	((c:memset@c+1))^00h,c
	movlw	low(0)
	movwf	((c:memset@c))^00h,c
	movlw	high(020h)
	movwf	((c:memset@n+1))^00h,c
	movlw	low(020h)
	movwf	((c:memset@n))^00h,c
	call	_memset	;wreg free
	line	1986
	
l2915:
;usb_device.c: 1986: UCONbits.PPBRST = 1;
	bsf	((c:3949))^0f00h,c,6	;volatile
	line	1991
	
l2917:
;usb_device.c: 1991: for(i = 0; i < (uint8_t)(1+1u); i++)
	movlw	low(0)
	movwf	((c:USBStdSetCfgHandler@i))^00h,c
	line	1993
	
l2923:
;usb_device.c: 1992: {;usb_device.c: 1993: ep_data_in[i].Val = 0u;
	movf	((c:USBStdSetCfgHandler@i))^00h,c,w
	addlw	low(_ep_data_in)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	1994
;usb_device.c: 1994: ep_data_out[i].Val = 0u;
	movf	((c:USBStdSetCfgHandler@i))^00h,c,w
	addlw	low(_ep_data_out)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	1991
	
l2925:
	incf	((c:USBStdSetCfgHandler@i))^00h,c
	
l2927:
		movlw	02h-1
	cpfsgt	((c:USBStdSetCfgHandler@i))^00h,c
	goto	u1701
	goto	u1700

u1701:
	goto	l2923
u1700:
	line	1998
	
l2929:
;usb_device.c: 1995: };usb_device.c: 1998: memset((void*)&USBAlternateInterface,0x00,1);
		movlw	low(_USBAlternateInterface)
	movwf	((c:memset@p1))^00h,c
	clrf	((c:memset@p1+1))^00h,c

	movlw	high(0)
	movwf	((c:memset@c+1))^00h,c
	movlw	low(0)
	movwf	((c:memset@c))^00h,c
	movlw	high(01h)
	movwf	((c:memset@n+1))^00h,c
	movlw	low(01h)
	movwf	((c:memset@n))^00h,c
	call	_memset	;wreg free
	line	2001
	
l2931:
;usb_device.c: 2001: UCONbits.PPBRST = 0;
	bcf	((c:3949))^0f00h,c,6	;volatile
	line	2003
	
l2933:
;usb_device.c: 2003: pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[2];
		movlw	low(1024+08h)
	movwf	((c:_pBDTEntryIn))^00h,c
	movlw	high(1024+08h)
	movwf	((c:_pBDTEntryIn+1))^00h,c

	line	2006
	
l2935:
;usb_device.c: 2006: pBDTEntryEP0OutCurrent = (volatile BDT_ENTRY*)&BDT[0];
		movlw	low(1024)
	movwf	((c:_pBDTEntryEP0OutCurrent))^00h,c
	movlw	high(1024)
	movwf	((c:_pBDTEntryEP0OutCurrent+1))^00h,c

	line	2007
	
l2937:
;usb_device.c: 2007: pBDTEntryEP0OutNext = pBDTEntryEP0OutCurrent;
		movff	(c:_pBDTEntryEP0OutCurrent),(c:_pBDTEntryEP0OutNext)
	movff	(c:_pBDTEntryEP0OutCurrent+1),(c:_pBDTEntryEP0OutNext+1)

	line	2010
	
l2939:
;usb_device.c: 2010: USBActiveConfiguration = SetupPkt.bConfigurationValue;
	movff	0+(1056+02h),(c:_USBActiveConfiguration)	;volatile
	line	2013
	
l2941:
;usb_device.c: 2013: if(USBActiveConfiguration == 0)
	movf	((c:_USBActiveConfiguration))^00h,c,w
	btfss	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l2945
u1710:
	line	2016
	
l2943:
;usb_device.c: 2014: {;usb_device.c: 2016: USBDeviceState = ADDRESS_STATE;
	movlw	low(010h)
	movwf	((c:_USBDeviceState))^00h,c
	line	2017
;usb_device.c: 2017: }
	goto	l509
	line	2021
	
l2945:
;usb_device.c: 2018: else;usb_device.c: 2019: {;usb_device.c: 2021: USER_USB_CALLBACK_EVENT_HANDLER((USB_EVENT)EVENT_CONFIGURED,(void*)&USBActiveConfiguration,1);
	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1))^00h,c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event))^00h,c
		movlw	low(_USBActiveConfiguration)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata))^00h,c
	clrf	((c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1))^00h,c

	movlw	high(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1))^00h,c
	movlw	low(01h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size))^00h,c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2026
	
l2947:
;usb_device.c: 2026: USBDeviceState = CONFIGURED_STATE;
	movlw	low(020h)
	movwf	((c:_USBDeviceState))^00h,c
	line	2028
	
l509:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBStdSetCfgHandler
	__end_of_USBStdSetCfgHandler:
	signat	_USBStdSetCfgHandler,89
	global	_memset

;; *************** function _memset *****************
;; Defined at:
;;		line 8 in file "D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\sources\c90\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2    0[COMRAM] PTR void 
;;		 -> USBAlternateInterface(1), BDT(32), UEP1(1), 
;;  c               2    2[COMRAM] int 
;;  n               2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  p               2    6[COMRAM] PTR unsigned char 
;;		 -> USBAlternateInterface(1), BDT(32), UEP1(1), 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceInit
;;		_USBStdSetCfgHandler
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=2
	file	"D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\sources\c90\common\memset.c"
	line	8
global __ptext26
__ptext26:
psect	text26
	file	"D:\DOCUMENTOS\PROGRAMAS_ESCUELA\xc8\v2.32\pic\sources\c90\common\memset.c"
	line	8
	global	__size_of_memset
	__size_of_memset	equ	__end_of_memset-_memset
	
_memset:
;incstack = 0
	callstack 24
	line	18
	
l2785:
		movff	(c:memset@p1),(c:memset@p)
	movff	(c:memset@p1+1),(c:memset@p+1)

	line	19
	goto	l2791
	line	20
	
l2787:
	movff	(c:memset@p),fsr2l
	movff	(c:memset@p+1),fsr2h
	movff	(c:memset@c),indf2

	
l2789:
	infsnz	((c:memset@p))^00h,c
	incf	((c:memset@p+1))^00h,c
	line	19
	
l2791:
	decf	((c:memset@n))^00h,c
	btfss	status,0
	decf	((c:memset@n+1))^00h,c
		incf	((c:memset@n))^00h,c,w
	bnz	u1551
	incf	((c:memset@n+1))^00h,c,w
	btfss	status,2
	goto	u1551
	goto	u1550

u1551:
	goto	l2787
u1550:
	line	22
	
l1381:
	return	;funcret
	callstack 0
GLOBAL	__end_of_memset
	__end_of_memset:
	signat	_memset,12410
	global	_USBStdGetStatusHandler

;; *************** function _USBStdGetStatusHandler *****************
;; Defined at:
;;		line 2133 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               2    0[COMRAM] PTR struct __BDT
;;		 -> RAM(2047), NULL(0), BDT(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 3F/4
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	file	"system/usb_device.c"
	line	2133
global __ptext27
__ptext27:
psect	text27
	file	"system/usb_device.c"
	line	2133
	global	__size_of_USBStdGetStatusHandler
	__size_of_USBStdGetStatusHandler	equ	__end_of_USBStdGetStatusHandler-_USBStdGetStatusHandler
	
_USBStdGetStatusHandler:
;incstack = 0
	callstack 22
	line	2135
	
l2981:
;usb_device.c: 2135: CtrlTrfData[0] = 0;
	movlw	low(0)
	movlb	4	; () banked
	movwf	((1064))&0ffh	;volatile
	line	2136
;usb_device.c: 2136: CtrlTrfData[1] = 0;
	movlw	low(0)
	movwf	(0+(1064+01h))&0ffh	;volatile
	line	2138
;usb_device.c: 2138: switch(SetupPkt.Recipient)
	goto	l3005
	line	2140
;usb_device.c: 2139: {;usb_device.c: 2140: case (0x00):
	
l527:; BSR set to: 4

	line	2141
;usb_device.c: 2141: inPipes[0].info.bits.busy = 1;
	bsf	(0+((c:_inPipes)+03h))^00h,c,7
	line	2151
;usb_device.c: 2146: if(0 == 1)
	
l2985:; BSR set to: 4

;usb_device.c: 2149: };usb_device.c: 2151: if(RemoteWakeup == 1)
		decf	((c:_RemoteWakeup))^00h,c,w
	btfss	status,2
	goto	u1781
	goto	u1780

u1781:
	goto	l530
u1780:
	line	2153
	
l2987:; BSR set to: 4

;usb_device.c: 2152: {;usb_device.c: 2153: CtrlTrfData[0]|=0x02;
	bsf	(0+(1/8)+(1064))&0ffh,(1)&7	;volatile
	goto	l530
	line	2156
;usb_device.c: 2156: case (0x01):
	
l531:; BSR set to: 4

	line	2157
;usb_device.c: 2157: inPipes[0].info.bits.busy = 1;
	bsf	(0+((c:_inPipes)+03h))^00h,c,7
	line	2158
;usb_device.c: 2158: break;
	goto	l530
	line	2159
;usb_device.c: 2159: case (0x02):
	
l532:; BSR set to: 4

	line	2160
;usb_device.c: 2160: inPipes[0].info.bits.busy = 1;
	bsf	(0+((c:_inPipes)+03h))^00h,c,7
	line	2164
	
l2989:; BSR set to: 4

;usb_device.c: 2164: if(SetupPkt.EPNum != 0)
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	iorlw	0
	btfsc	status,2
	goto	u1791
	goto	u1790
u1791:
	goto	l530
u1790:
	line	2168
	
l2991:; BSR set to: 4

;usb_device.c: 2165: {;usb_device.c: 2166: BDT_ENTRY *p;;usb_device.c: 2168: if(SetupPkt.EPDir == 0)
	btfsc	(0+(1056+04h))&0ffh,7	;volatile
	goto	u1801
	goto	u1800
u1801:
	goto	l2995
u1800:
	line	2170
	
l2993:; BSR set to: 4

;usb_device.c: 2169: {;usb_device.c: 2170: p = (BDT_ENTRY*)pBDTEntryOut[SetupPkt.EPNum];
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryOut)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:USBStdGetStatusHandler@p)
	movff	postdec2,(c:USBStdGetStatusHandler@p+1)
	line	2171
;usb_device.c: 2171: }
	goto	l2997
	line	2174
	
l2995:; BSR set to: 4

;usb_device.c: 2172: else;usb_device.c: 2173: {;usb_device.c: 2174: p = (BDT_ENTRY*)pBDTEntryIn[SetupPkt.EPNum];
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryIn)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:USBStdGetStatusHandler@p)
	movff	postdec2,(c:USBStdGetStatusHandler@p+1)
	line	2177
	
l2997:; BSR set to: 4

;usb_device.c: 2175: };usb_device.c: 2177: if((p->STAT.UOWN == 1) && (p->STAT.BSTALL == 1))
	movff	(c:USBStdGetStatusHandler@p),fsr2l
	movff	(c:USBStdGetStatusHandler@p+1),fsr2h
	btfss	c:indf2,7
	goto	u1811
	goto	u1810
u1811:
	goto	l530
u1810:
	
l2999:; BSR set to: 4

	movff	(c:USBStdGetStatusHandler@p),fsr2l
	movff	(c:USBStdGetStatusHandler@p+1),fsr2h
	btfss	c:indf2,2
	goto	u1821
	goto	u1820
u1821:
	goto	l530
u1820:
	line	2179
	
l3001:; BSR set to: 4

;usb_device.c: 2178: {;usb_device.c: 2179: CtrlTrfData[0]=0x01;
	movlw	low(01h)
	movwf	((1064))&0ffh	;volatile
	goto	l530
	line	2138
	
l3005:; BSR set to: 4

	movf	((1056))&0ffh,w	;volatile
	andlw	(1<<5)-1
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l527
	xorlw	1^0	; case 1
	skipnz
	goto	l531
	xorlw	2^1	; case 2
	skipnz
	goto	l532
	goto	l530

	line	2183
	
l530:; BSR set to: 4

	line	2185
;usb_device.c: 2185: if(inPipes[0].info.bits.busy == 1)
	btfss	(0+((c:_inPipes)+03h))^00h,c,7
	goto	u1831
	goto	u1830
u1831:
	goto	l538
u1830:
	line	2187
	
l3007:; BSR set to: 4

;usb_device.c: 2186: {;usb_device.c: 2187: inPipes[0].pSrc.bRam = (uint8_t*)&CtrlTrfData;
		movlw	low(1064)
	movwf	((c:_inPipes))^00h,c
	movlw	high(1064)
	movwf	((c:_inPipes+1))^00h,c

	line	2188
	
l3009:; BSR set to: 4

;usb_device.c: 2188: inPipes[0].info.bits.ctrl_trf_mem = 0x01;
	bsf	(0+((c:_inPipes)+03h))^00h,c,0
	line	2189
	
l3011:; BSR set to: 4

;usb_device.c: 2189: inPipes[0].wCount.v[0] = 2;
	movlw	low(02h)
	movwf	(0+((c:_inPipes)+04h))^00h,c
	line	2191
	
l538:; BSR set to: 4

	return	;funcret
	callstack 0
GLOBAL	__end_of_USBStdGetStatusHandler
	__end_of_USBStdGetStatusHandler:
	signat	_USBStdGetStatusHandler,89
	global	_USBStdGetDscHandler

;; *************** function _USBStdGetDscHandler *****************
;; Defined at:
;;		line 2047 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	line	2047
global __ptext28
__ptext28:
psect	text28
	file	"system/usb_device.c"
	line	2047
	global	__size_of_USBStdGetDscHandler
	__size_of_USBStdGetDscHandler	equ	__end_of_USBStdGetDscHandler-_USBStdGetDscHandler
	
_USBStdGetDscHandler:; BSR set to: 4

;incstack = 0
	callstack 22
	line	2049
	
l2949:
;usb_device.c: 2049: if(SetupPkt.bmRequestType == 0x80)
		movlw	128
	movlb	4	; () banked
	xorwf	((1056))&0ffh,w	;volatile
	btfss	status,2
	goto	u1721
	goto	u1720

u1721:
	goto	l523
u1720:
	line	2051
	
l2951:; BSR set to: 4

;usb_device.c: 2050: {;usb_device.c: 2051: inPipes[0].info.Val = 0x00 | 0x80 | 0x40;
	movlw	low(0C0h)
	movwf	(0+((c:_inPipes)+03h))^00h,c
	line	2053
;usb_device.c: 2053: switch(SetupPkt.bDescriptorType)
	goto	l2979
	line	2059
	
l2953:; BSR set to: 4

;usb_device.c: 2059: inPipes[0].pSrc.bRom = (const uint8_t*)&device_dsc;
		movlw	low(_device_dsc)
	movwf	((c:_inPipes))^00h,c
	movf	((c:_inPipes))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:_inPipes+1))^00h,c

	line	2061
	
l2955:; BSR set to: 4

;usb_device.c: 2061: inPipes[0].wCount.Val = sizeof(device_dsc);
	movlw	high(012h)
	movwf	(1+((c:_inPipes)+04h))^00h,c
	movlw	low(012h)
	movwf	(0+((c:_inPipes)+04h))^00h,c
	line	2062
;usb_device.c: 2062: break;
	goto	l523
	line	2067
	
l2957:; BSR set to: 4

;usb_device.c: 2067: if(SetupPkt.bDscIndex < 1)
	movf	(0+(1056+02h))&0ffh,w	;volatile
	btfss	status,2
	goto	u1731
	goto	u1730
u1731:
	goto	l2965
u1730:
	line	2072
	
l2959:; BSR set to: 4

;usb_device.c: 2068: {;usb_device.c: 2072: inPipes[0].pSrc.bRom = *(USB_CD_Ptr+SetupPkt.bDscIndex);
	movf	(0+(1056+02h))&0ffh,w	;volatile
	addlw	low(_USB_CD_Ptr)
	movwf	(??_USBStdGetDscHandler+0+0)^00h,c
	movff	(??_USBStdGetDscHandler+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:_inPipes)
	global __smallconst
movlw	high(__smallconst)
	movwf	((c:_inPipes+1))^00h,c

	line	2078
	
l2961:; BSR set to: 4

;usb_device.c: 2078: inPipes[0].wCount.byte.LB = *(inPipes[0].pSrc.bRom+2);
	movlw	02h
	addwf	((c:_inPipes))^00h,c,w
	movwf	(??_USBStdGetDscHandler+0+0)^00h,c
	movlw	0
	addwfc	((c:_inPipes+1))^00h,c,w
	movwf	(??_USBStdGetDscHandler+0+0+1)^00h,c
	movff	??_USBStdGetDscHandler+0+0,tblptrl
	movff	??_USBStdGetDscHandler+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1747
	tblrd	*
	
	movf	tablat,w
	bra	u1740
u1747:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u1740:
	movwf	(0+((c:_inPipes)+04h))^00h,c
	line	2079
	
l2963:
;usb_device.c: 2079: inPipes[0].wCount.byte.HB = *(inPipes[0].pSrc.bRom+3);
	movlw	03h
	addwf	((c:_inPipes))^00h,c,w
	movwf	(??_USBStdGetDscHandler+0+0)^00h,c
	movlw	0
	addwfc	((c:_inPipes+1))^00h,c,w
	movwf	(??_USBStdGetDscHandler+0+0+1)^00h,c
	movff	??_USBStdGetDscHandler+0+0,tblptrl
	movff	??_USBStdGetDscHandler+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1757
	tblrd	*
	
	movf	tablat,w
	bra	u1750
u1757:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u1750:
	movwf	(0+((c:_inPipes)+05h))^00h,c
	line	2080
;usb_device.c: 2080: }
	goto	l523
	line	2083
	
l2965:; BSR set to: 4

;usb_device.c: 2081: else;usb_device.c: 2082: {;usb_device.c: 2083: inPipes[0].info.Val = 0;
	movlw	low(0)
	movwf	(0+((c:_inPipes)+03h))^00h,c
	goto	l523
	line	2090
	
l2967:; BSR set to: 4

;usb_device.c: 2090: if(SetupPkt.bDscIndex<3)
		movlw	03h-0
	cpfslt	(0+(1056+02h))&0ffh	;volatile
	goto	u1761
	goto	u1760

u1761:
	goto	l2965
u1760:
	line	2093
	
l2969:; BSR set to: 4

;usb_device.c: 2091: {;usb_device.c: 2093: inPipes[0].pSrc.bRom = *(USB_SD_Ptr+SetupPkt.bDscIndex);
	movf	(0+(1056+02h))&0ffh,w	;volatile
	addlw	low(_USB_SD_Ptr)
	movwf	(??_USBStdGetDscHandler+0+0)^00h,c
	movff	(??_USBStdGetDscHandler+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:_inPipes)
	global __smallconst
movlw	high(__smallconst)
	movwf	((c:_inPipes+1))^00h,c

	line	2095
	
l2971:; BSR set to: 4

;usb_device.c: 2095: inPipes[0].wCount.Val = *inPipes[0].pSrc.bRom;
	movff	(c:_inPipes),tblptrl
	movff	(c:_inPipes+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1777
	tblrd	*
	
	movf	tablat,w
	bra	u1770
u1777:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u1770:
	movwf	(??_USBStdGetDscHandler+0+0)^00h,c
	movf	((??_USBStdGetDscHandler+0+0))^00h,c,w
	movwf	(0+((c:_inPipes)+04h))^00h,c
	clrf	(1+((c:_inPipes)+04h))^00h,c
	line	2096
;usb_device.c: 2096: }
	goto	l523
	line	2053
	
l2979:; BSR set to: 4

	movf	(0+(1056+03h))&0ffh,w	;volatile
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l2953
	xorlw	2^1	; case 2
	skipnz
	goto	l2957
	xorlw	3^2	; case 3
	skipnz
	goto	l2967
	goto	l2965

	line	2116
	
l523:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBStdGetDscHandler
	__end_of_USBStdGetDscHandler:
	signat	_USBStdGetDscHandler,89
	global	_USBStdFeatureReqHandler

;; *************** function _USBStdFeatureReqHandler *****************
;; Defined at:
;;		line 2761 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               2   25[COMRAM] PTR struct __BDT
;;		 -> RAM(2047), NULL(0), BDT(32), 
;;  pUEP            2   22[COMRAM] PTR unsigned char 
;;		 -> UEP0(1), 
;;  current_ep_d    1   24[COMRAM] struct .
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 3F/4
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	line	2761
global __ptext29
__ptext29:
psect	text29
	file	"system/usb_device.c"
	line	2761
	global	__size_of_USBStdFeatureReqHandler
	__size_of_USBStdFeatureReqHandler	equ	__end_of_USBStdFeatureReqHandler-_USBStdFeatureReqHandler
	
_USBStdFeatureReqHandler:
;incstack = 0
	callstack 19
	line	2773
	
l3013:
;usb_device.c: 2763: BDT_ENTRY *p;;usb_device.c: 2764: EP_STATUS current_ep_data;;usb_device.c: 2768: unsigned char* pUEP;;usb_device.c: 2772: if((SetupPkt.bFeature == 1)&&;usb_device.c: 2773: (SetupPkt.Recipient == (0x00)))
	movlb	4	; () banked
		decf	(0+(1056+02h))&0ffh,w	;volatile
	btfss	status,2
	goto	u1841
	goto	u1840

u1841:
	goto	l605
u1840:
	
l3015:; BSR set to: 4

	movf	((1056))&0ffh,w	;volatile
	andlw	(1<<5)-1
	iorlw	0
	btfss	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l605
u1850:
	line	2775
	
l3017:; BSR set to: 4

;usb_device.c: 2774: {;usb_device.c: 2775: inPipes[0].info.bits.busy = 1;
	bsf	(0+((c:_inPipes)+03h))^00h,c,7
	line	2776
	
l3019:; BSR set to: 4

;usb_device.c: 2776: if(SetupPkt.bRequest == 3)
		movlw	3
	xorwf	(0+(1056+01h))&0ffh,w	;volatile
	btfss	status,2
	goto	u1861
	goto	u1860

u1861:
	goto	l3023
u1860:
	line	2777
	
l3021:; BSR set to: 4

;usb_device.c: 2777: RemoteWakeup = 1;
	movlw	low(01h)
	movwf	((c:_RemoteWakeup))^00h,c
	goto	l605
	line	2779
	
l3023:; BSR set to: 4

;usb_device.c: 2778: else;usb_device.c: 2779: RemoteWakeup = 0;
	movlw	low(0)
	movwf	((c:_RemoteWakeup))^00h,c
	line	2780
	
l605:; BSR set to: 4

	line	2786
;usb_device.c: 2780: };usb_device.c: 2783: if((SetupPkt.bFeature == 0)&&;usb_device.c: 2784: (SetupPkt.Recipient == (0x02))&&;usb_device.c: 2785: (SetupPkt.EPNum != 0) && (SetupPkt.EPNum <= 1)&&;usb_device.c: 2786: (USBDeviceState == CONFIGURED_STATE))
	movf	(0+(1056+02h))&0ffh,w	;volatile
	btfss	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l628
u1870:
	
l3025:; BSR set to: 4

	movf	((1056))&0ffh,w	;volatile
	andlw	(1<<5)-1
	xorlw	02h
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l628
u1880:
	
l3027:; BSR set to: 4

	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	iorlw	0
	btfsc	status,2
	goto	u1891
	goto	u1890
u1891:
	goto	l628
u1890:
	
l3029:; BSR set to: 4

	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)^00h,c
		movlw	02h-0
	cpfslt	((??_USBStdFeatureReqHandler+0+0))^00h,c
	goto	u1901
	goto	u1900

u1901:
	goto	l628
u1900:
	
l3031:; BSR set to: 4

		movlw	32
	xorwf	((c:_USBDeviceState))^00h,c,w
	btfss	status,2
	goto	u1911
	goto	u1910

u1911:
	goto	l628
u1910:
	line	2790
	
l3033:; BSR set to: 4

;usb_device.c: 2787: {;usb_device.c: 2790: inPipes[0].info.bits.busy = 1;
	bsf	(0+((c:_inPipes)+03h))^00h,c,7
	line	2793
;usb_device.c: 2793: if(SetupPkt.EPDir == 0)
	btfsc	(0+(1056+04h))&0ffh,7	;volatile
	goto	u1921
	goto	u1920
u1921:
	goto	l3039
u1920:
	line	2795
	
l3035:; BSR set to: 4

;usb_device.c: 2794: {;usb_device.c: 2795: p = (BDT_ENTRY*)pBDTEntryOut[SetupPkt.EPNum];
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryOut)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:USBStdFeatureReqHandler@p)
	movff	postdec2,(c:USBStdFeatureReqHandler@p+1)
	line	2796
	
l3037:; BSR set to: 4

;usb_device.c: 2796: current_ep_data.Val = ep_data_out[SetupPkt.EPNum].Val;
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)^00h,c
	movf	((??_USBStdFeatureReqHandler+0+0))^00h,c,w
	addlw	low(_ep_data_out)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:USBStdFeatureReqHandler@current_ep_data))^00h,c
	line	2797
;usb_device.c: 2797: }
	goto	l3043
	line	2800
	
l3039:; BSR set to: 4

;usb_device.c: 2798: else;usb_device.c: 2799: {;usb_device.c: 2800: p = (BDT_ENTRY*)pBDTEntryIn[SetupPkt.EPNum];
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryIn)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:USBStdFeatureReqHandler@p)
	movff	postdec2,(c:USBStdFeatureReqHandler@p+1)
	line	2801
	
l3041:; BSR set to: 4

;usb_device.c: 2801: current_ep_data.Val = ep_data_in[SetupPkt.EPNum].Val;
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)^00h,c
	movf	((??_USBStdFeatureReqHandler+0+0))^00h,c,w
	addlw	low(_ep_data_in)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:USBStdFeatureReqHandler@current_ep_data))^00h,c
	line	2808
	
l3043:; BSR set to: 4

;usb_device.c: 2802: };usb_device.c: 2808: if(current_ep_data.bits.ping_pong_state == 0)
	btfsc	((c:USBStdFeatureReqHandler@current_ep_data))^00h,c,0
	goto	u1931
	goto	u1930
u1931:
	goto	l3047
u1930:
	line	2810
	
l3045:; BSR set to: 4

;usb_device.c: 2809: {;usb_device.c: 2810: p = (BDT_ENTRY*)(((uintptr_t)p) & (~0x0004));
	movlw	low(0FFFBh)
	andwf	((c:USBStdFeatureReqHandler@p))^00h,c,w
	movwf	((c:USBStdFeatureReqHandler@p))^00h,c
	movlw	high(0FFFBh)
	andwf	((c:USBStdFeatureReqHandler@p+1))^00h,c,w
	movwf	1+((c:USBStdFeatureReqHandler@p))^00h,c
	line	2811
;usb_device.c: 2811: }
	goto	l3049
	line	2814
	
l3047:; BSR set to: 4

;usb_device.c: 2812: else;usb_device.c: 2813: {;usb_device.c: 2814: p = (BDT_ENTRY*)(((uintptr_t)p) | 0x0004);
	movlw	04h
	iorwf	((c:USBStdFeatureReqHandler@p))^00h,c,w
	movwf	((c:USBStdFeatureReqHandler@p))^00h,c
	movf	((c:USBStdFeatureReqHandler@p+1))^00h,c,w
	movwf	1+((c:USBStdFeatureReqHandler@p))^00h,c
	line	2820
	
l3049:; BSR set to: 4

;usb_device.c: 2815: };usb_device.c: 2820: if(SetupPkt.EPDir == 0)
	btfsc	(0+(1056+04h))&0ffh,7	;volatile
	goto	u1941
	goto	u1940
u1941:
	goto	l3053
u1940:
	line	2822
	
l3051:; BSR set to: 4

;usb_device.c: 2821: {;usb_device.c: 2822: pBDTEntryOut[SetupPkt.EPNum] = (volatile BDT_ENTRY *)p;
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryOut)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:USBStdFeatureReqHandler@p),postinc2
	movff	(c:USBStdFeatureReqHandler@p+1),postdec2
	line	2823
;usb_device.c: 2823: }
	goto	l3055
	line	2826
	
l3053:; BSR set to: 4

;usb_device.c: 2824: else;usb_device.c: 2825: {;usb_device.c: 2826: pBDTEntryIn[SetupPkt.EPNum] = (volatile BDT_ENTRY *)p;
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryIn)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:USBStdFeatureReqHandler@p),postinc2
	movff	(c:USBStdFeatureReqHandler@p+1),postdec2
	line	2830
	
l3055:; BSR set to: 4

;usb_device.c: 2827: };usb_device.c: 2830: if(SetupPkt.bRequest == 3)
		movlw	3
	xorwf	(0+(1056+01h))&0ffh,w	;volatile
	btfss	status,2
	goto	u1951
	goto	u1950

u1951:
	goto	l3065
u1950:
	line	2832
	
l3057:; BSR set to: 4

;usb_device.c: 2831: {;usb_device.c: 2832: if(p->STAT.UOWN == 1)
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	c:indf2,7
	goto	u1961
	goto	u1960
u1961:
	goto	l616
u1960:
	line	2836
	
l3059:; BSR set to: 4

;usb_device.c: 2833: {;usb_device.c: 2836: if(SetupPkt.EPDir == 0)
	btfsc	(0+(1056+04h))&0ffh,7	;volatile
	goto	u1971
	goto	u1970
u1971:
	goto	l3063
u1970:
	line	2838
	
l3061:; BSR set to: 4

;usb_device.c: 2837: {;usb_device.c: 2838: ep_data_out[SetupPkt.EPNum].bits.transfer_terminated = 1;
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)^00h,c
	movf	((??_USBStdFeatureReqHandler+0+0))^00h,c,w
	addlw	low(_ep_data_out)
	movwf	fsr2l
	clrf	fsr2h
	bsf	c:indf2,1
	line	2839
;usb_device.c: 2839: }
	goto	l616
	line	2842
	
l3063:; BSR set to: 4

;usb_device.c: 2840: else;usb_device.c: 2841: {;usb_device.c: 2842: ep_data_in[SetupPkt.EPNum].bits.transfer_terminated = 1;
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)^00h,c
	movf	((??_USBStdFeatureReqHandler+0+0))^00h,c,w
	addlw	low(_ep_data_in)
	movwf	fsr2l
	clrf	fsr2h
	bsf	c:indf2,1
	line	2844
	
l616:; BSR set to: 4

	line	2847
;usb_device.c: 2843: };usb_device.c: 2844: };usb_device.c: 2847: p->STAT.Val |= 0x04;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(2/8)
	bsf	plusw2,(2)&7
	line	2848
;usb_device.c: 2848: p->STAT.Val |= 0x80;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2849
;usb_device.c: 2849: }
	goto	l628
	line	2855
	
l3065:; BSR set to: 4

;usb_device.c: 2850: else;usb_device.c: 2851: {;usb_device.c: 2855: p = (BDT_ENTRY*)(((uintptr_t)p) ^ 0x0004);
	movlw	04h
	xorwf	((c:USBStdFeatureReqHandler@p))^00h,c,w
	movwf	((c:USBStdFeatureReqHandler@p))^00h,c
	movf	((c:USBStdFeatureReqHandler@p+1))^00h,c,w
	movwf	1+((c:USBStdFeatureReqHandler@p))^00h,c
	line	2857
	
l3067:; BSR set to: 4

;usb_device.c: 2857: if(p->STAT.UOWN == 1)
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	c:indf2,7
	goto	u1981
	goto	u1980
u1981:
	goto	l3075
u1980:
	line	2861
	
l3069:; BSR set to: 4

;usb_device.c: 2858: {;usb_device.c: 2861: p->STAT.Val &= (~0x80);
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2862
	
l3071:; BSR set to: 4

;usb_device.c: 2862: p->STAT.Val |= 0x40;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(6/8)
	bsf	plusw2,(6)&7
	line	2863
	
l3073:; BSR set to: 4

;usb_device.c: 2863: USER_USB_CALLBACK_EVENT_HANDLER((USB_EVENT)EVENT_TRANSFER_TERMINATED,p,sizeof(p));
	movlw	high(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1))^00h,c
	movlw	low(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event))^00h,c
		movff	(c:USBStdFeatureReqHandler@p),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)
	movff	(c:USBStdFeatureReqHandler@p+1),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)

	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1))^00h,c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size))^00h,c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2864
;usb_device.c: 2864: }
	goto	l3077
	line	2868
	
l3075:; BSR set to: 4

;usb_device.c: 2865: else;usb_device.c: 2866: {;usb_device.c: 2868: p->STAT.Val |= 0x40;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(6/8)
	bsf	plusw2,(6)&7
	line	2873
	
l3077:
;usb_device.c: 2869: };usb_device.c: 2873: p = (BDT_ENTRY*)(((uintptr_t)p) ^ 0x0004);
	movlw	04h
	xorwf	((c:USBStdFeatureReqHandler@p))^00h,c,w
	movwf	((c:USBStdFeatureReqHandler@p))^00h,c
	movf	((c:USBStdFeatureReqHandler@p+1))^00h,c,w
	movwf	1+((c:USBStdFeatureReqHandler@p))^00h,c
	line	2879
	
l3079:
;usb_device.c: 2879: if((current_ep_data.bits.transfer_terminated != 0) || (p->STAT.UOWN == 1))
	btfsc	((c:USBStdFeatureReqHandler@current_ep_data))^00h,c,1
	goto	u1991
	goto	u1990
u1991:
	goto	l624
u1990:
	
l3081:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	btfss	c:indf2,7
	goto	u2001
	goto	u2000
u2001:
	goto	l3091
u2000:
	
l624:
	line	2881
;usb_device.c: 2880: {;usb_device.c: 2881: if(SetupPkt.EPDir == 0)
	movlb	4	; () banked
	btfsc	(0+(1056+04h))&0ffh,7	;volatile
	goto	u2011
	goto	u2010
u2011:
	goto	l3085
u2010:
	line	2883
	
l3083:; BSR set to: 4

;usb_device.c: 2882: {;usb_device.c: 2883: ep_data_out[SetupPkt.EPNum].bits.transfer_terminated = 0;
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)^00h,c
	movf	((??_USBStdFeatureReqHandler+0+0))^00h,c,w
	addlw	low(_ep_data_out)
	movwf	fsr2l
	clrf	fsr2h
	bcf	c:indf2,1
	line	2884
;usb_device.c: 2884: }
	goto	l3087
	line	2887
	
l3085:; BSR set to: 4

;usb_device.c: 2885: else;usb_device.c: 2886: {;usb_device.c: 2887: ep_data_in[SetupPkt.EPNum].bits.transfer_terminated = 0;
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)^00h,c
	movf	((??_USBStdFeatureReqHandler+0+0))^00h,c,w
	addlw	low(_ep_data_in)
	movwf	fsr2l
	clrf	fsr2h
	bcf	c:indf2,1
	line	2890
	
l3087:; BSR set to: 4

;usb_device.c: 2888: };usb_device.c: 2890: p->STAT.Val &= ~(0x80 | 0x40 | 0x04);
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	03Bh
	andwf	indf2
	line	2893
	
l3089:; BSR set to: 4

;usb_device.c: 2893: USER_USB_CALLBACK_EVENT_HANDLER((USB_EVENT)EVENT_TRANSFER_TERMINATED,p,sizeof(p));
	movlw	high(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event+1))^00h,c
	movlw	low(05h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@event))^00h,c
		movff	(c:USBStdFeatureReqHandler@p),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata)
	movff	(c:USBStdFeatureReqHandler@p+1),(c:USER_USB_CALLBACK_EVENT_HANDLER@pdata+1)

	movlw	high(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size+1))^00h,c
	movlw	low(02h)
	movwf	((c:USER_USB_CALLBACK_EVENT_HANDLER@size))^00h,c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2894
;usb_device.c: 2894: }
	goto	l3093
	line	2898
	
l3091:
;usb_device.c: 2895: else;usb_device.c: 2896: {;usb_device.c: 2898: p->STAT.Val &= ~(0x80 | 0x40 | 0x04);
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	03Bh
	andwf	indf2
	line	2946
	
l3093:
;usb_device.c: 2899: };usb_device.c: 2946: pUEP = (unsigned char*)(&UEP0+SetupPkt.EPNum);
	movlb	4	; () banked
	movf	(0+(1056+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)^00h,c
	clrf	(??_USBStdFeatureReqHandler+0+0+1)^00h,c

	movlw	low(3952)
	addwf	(??_USBStdFeatureReqHandler+0+0)^00h,c,w
	movwf	((c:USBStdFeatureReqHandler@pUEP))^00h,c
	movlw	high(3952)
	addwfc	(??_USBStdFeatureReqHandler+0+1)^00h,c,w
	movwf	1+((c:USBStdFeatureReqHandler@pUEP))^00h,c
	line	2950
	
l3095:; BSR set to: 4

;usb_device.c: 2950: *pUEP &= ~0x0001;
	movff	(c:USBStdFeatureReqHandler@pUEP),fsr2l
	movff	(c:USBStdFeatureReqHandler@pUEP+1),fsr2h
	movlw	0FEh
	andwf	indf2
	line	2953
	
l628:; BSR set to: 4

	return	;funcret
	callstack 0
GLOBAL	__end_of_USBStdFeatureReqHandler
	__end_of_USBStdFeatureReqHandler:
	signat	_USBStdFeatureReqHandler,89
	global	_USER_USB_CALLBACK_EVENT_HANDLER

;; *************** function _USER_USB_CALLBACK_EVENT_HANDLER *****************
;; Defined at:
;;		line 25 in file "system/usb_events.c"
;; Parameters:    Size  Location     Type
;;  event           2   12[COMRAM] enum E3252
;;  pdata           2   14[COMRAM] PTR void 
;;		 -> RAM(2047), USTATcopy(1), USBActiveConfiguration(1), NULL(0), 
;;		 -> BDT(32), 
;;  size            2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_USBCheckHIDRequest
;;		_USBEnableEndpoint
;;		_USBTransferOnePacket
;; This function is called by:
;;		_USBDeviceTasks
;;		_USBStdSetCfgHandler
;;		_USBSuspend
;;		_USBWakeFromSuspend
;;		_USBCtrlTrfSetupHandler
;;		_USBCheckStdRequest
;;		_USBStdFeatureReqHandler
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	file	"system/usb_events.c"
	line	25
global __ptext30
__ptext30:
psect	text30
	file	"system/usb_events.c"
	line	25
	global	__size_of_USER_USB_CALLBACK_EVENT_HANDLER
	__size_of_USER_USB_CALLBACK_EVENT_HANDLER	equ	__end_of_USER_USB_CALLBACK_EVENT_HANDLER-_USER_USB_CALLBACK_EVENT_HANDLER
	
_USER_USB_CALLBACK_EVENT_HANDLER:; BSR set to: 4

;incstack = 0
	callstack 23
	line	27
	
l2793:
;usb_events.c: 27: switch((int)event)
	goto	l2805
	line	31
	
l2795:
;usb_events.c: 31: USBInHandle = 0;
		movlw	low(0)
	movwf	((c:_USBInHandle))^00h,c
	movlw	high(0)
	movwf	((c:_USBInHandle+1))^00h,c

	line	33
	
l2797:
;usb_events.c: 33: USBEnableEndpoint(1, 0x02|0x04|0x10|0x08);
	movlw	low(01Eh)
	movwf	((c:USBEnableEndpoint@options))^00h,c
	movlw	(01h)&0ffh
	
	call	_USBEnableEndpoint
	line	35
	
l2799:
;usb_events.c: 35: USBOutHandle = (volatile void*)USBTransferOnePacket(1,0,(uint8_t*)&ReceivedDataBuffer[0],64);
	movlw	low(0)
	movwf	((c:USBTransferOnePacket@dir))^00h,c
		movlw	low(1280)
	movwf	((c:USBTransferOnePacket@data))^00h,c
	movlw	high(1280)
	movwf	((c:USBTransferOnePacket@data+1))^00h,c

	movlw	low(040h)
	movwf	((c:USBTransferOnePacket@len))^00h,c
	movlw	(01h)&0ffh
	
	call	_USBTransferOnePacket
	movff	0+?_USBTransferOnePacket,(c:_USBOutHandle)
	movff	1+?_USBTransferOnePacket,(c:_USBOutHandle+1)
	line	36
;usb_events.c: 36: break;
	goto	l707
	line	41
	
l2801:
;usb_events.c: 41: USBCheckHIDRequest();
	call	_USBCheckHIDRequest	;wreg free
	line	42
;usb_events.c: 42: break;
	goto	l707
	line	27
	
l2805:
	movff	(c:USER_USB_CALLBACK_EVENT_HANDLER@event),??_USER_USB_CALLBACK_EVENT_HANDLER+0+0
	movff	(c:USER_USB_CALLBACK_EVENT_HANDLER@event+1),??_USER_USB_CALLBACK_EVENT_HANDLER+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l3861
	goto	l707
	
l3861:
; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+0^00h,c,w
	xorlw	1^0	; case 1
	skipnz
	goto	l2795
	xorlw	3^1	; case 3
	skipnz
	goto	l2801
	goto	l707

	line	48
	
l707:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USER_USB_CALLBACK_EVENT_HANDLER
	__end_of_USER_USB_CALLBACK_EVENT_HANDLER:
	signat	_USER_USB_CALLBACK_EVENT_HANDLER,12409
	global	_USBTransferOnePacket

;; *************** function _USBTransferOnePacket *****************
;; Defined at:
;;		line 999 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  dir             1    0[COMRAM] unsigned char 
;;  data            2    1[COMRAM] PTR unsigned char 
;;		 -> ToSendDataBuffer(0), ReceivedDataBuffer(0), 
;;  len             1    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1    6[COMRAM] unsigned char 
;;  handle          2    7[COMRAM] PTR volatile struct __BD
;;		 -> RAM(2047), NULL(0), BDT(32), 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_HID_transf
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	file	"system/usb_device.c"
	line	999
global __ptext31
__ptext31:
psect	text31
	file	"system/usb_device.c"
	line	999
	global	__size_of_USBTransferOnePacket
	__size_of_USBTransferOnePacket	equ	__end_of_USBTransferOnePacket-_USBTransferOnePacket
	
_USBTransferOnePacket:
;incstack = 0
	callstack 26
;USBTransferOnePacket@ep stored from wreg
	movwf	((c:USBTransferOnePacket@ep))^00h,c
	line	1004
	
l2685:
;usb_device.c: 1001: volatile BDT_ENTRY* handle;;usb_device.c: 1004: if(dir != 0)
	movf	((c:USBTransferOnePacket@dir))^00h,c,w
	btfsc	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l2689
u1450:
	line	1007
	
l2687:
;usb_device.c: 1005: {;usb_device.c: 1007: handle = pBDTEntryIn[ep];
	movf	((c:USBTransferOnePacket@ep))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryIn)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:USBTransferOnePacket@handle)
	movff	postdec2,(c:USBTransferOnePacket@handle+1)
	line	1008
;usb_device.c: 1008: }
	goto	l2691
	line	1012
	
l2689:
;usb_device.c: 1009: else;usb_device.c: 1010: {;usb_device.c: 1012: handle = pBDTEntryOut[ep];
	movf	((c:USBTransferOnePacket@ep))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryOut)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:USBTransferOnePacket@handle)
	movff	postdec2,(c:USBTransferOnePacket@handle+1)
	line	1017
	
l2691:
;usb_device.c: 1013: };usb_device.c: 1017: if(handle == 0)
	movf	((c:USBTransferOnePacket@handle))^00h,c,w
iorwf	((c:USBTransferOnePacket@handle+1))^00h,c,w
	btfss	status,2
	goto	u1461
	goto	u1460

u1461:
	goto	l2697
u1460:
	line	1019
	
l2693:
;usb_device.c: 1018: {;usb_device.c: 1019: return 0;
		movlw	low(0)
	movwf	((c:?_USBTransferOnePacket))^00h,c
	movlw	high(0)
	movwf	((c:?_USBTransferOnePacket+1))^00h,c

	goto	l431
	line	1033
	
l2697:
;usb_device.c: 1020: };usb_device.c: 1033: handle->ADR = ((uint16_t)(data));
	lfsr	2,02h
	movf	((c:USBTransferOnePacket@handle))^00h,c,w
	addwf	fsr2l
	movf	((c:USBTransferOnePacket@handle+1))^00h,c,w
	addwfc	fsr2h
	movff	(c:USBTransferOnePacket@data),postinc2
	movff	(c:USBTransferOnePacket@data+1),postdec2
	line	1034
;usb_device.c: 1034: handle->CNT = len;
	lfsr	2,01h
	movf	((c:USBTransferOnePacket@handle))^00h,c,w
	addwf	fsr2l
	movf	((c:USBTransferOnePacket@handle+1))^00h,c,w
	addwfc	fsr2h
	movff	(c:USBTransferOnePacket@len),indf2

	line	1035
	
l2699:
;usb_device.c: 1035: handle->STAT.Val &= 0x40;
	movff	(c:USBTransferOnePacket@handle),fsr2l
	movff	(c:USBTransferOnePacket@handle+1),fsr2h
	movlw	040h
	andwf	indf2
	line	1036
	
l2701:
;usb_device.c: 1036: handle->STAT.Val |= (0x08 & 0x08);
	movff	(c:USBTransferOnePacket@handle),fsr2l
	movff	(c:USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(3/8)
	bsf	plusw2,(3)&7
	line	1037
	
l2703:
;usb_device.c: 1037: handle->STAT.Val |= 0x80;
	movff	(c:USBTransferOnePacket@handle),fsr2l
	movff	(c:USBTransferOnePacket@handle+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1040
	
l2705:
;usb_device.c: 1040: if(dir != 0)
	movf	((c:USBTransferOnePacket@dir))^00h,c,w
	btfsc	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l2709
u1470:
	line	1043
	
l2707:
;usb_device.c: 1041: {;usb_device.c: 1043: pBDTEntryIn[ep] = (BDT_ENTRY*)(((uintptr_t)pBDTEntryIn[ep]) ^ 0x0004);
	movf	((c:USBTransferOnePacket@ep))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryIn)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_USBTransferOnePacket+0+0
	movff	postdec2,??_USBTransferOnePacket+0+0+1
	movlw	04h
	xorwf	(??_USBTransferOnePacket+0+0)^00h,c
	movlw	0
	xorwf	(??_USBTransferOnePacket+0+1)^00h,c
	movf	((c:USBTransferOnePacket@ep))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryIn)
	movwf	fsr2l
	clrf	fsr2h
	movff	??_USBTransferOnePacket+0+0,postinc2
	movff	??_USBTransferOnePacket+0+1,postdec2

	line	1044
;usb_device.c: 1044: }
	goto	l2711
	line	1048
	
l2709:
;usb_device.c: 1045: else;usb_device.c: 1046: {;usb_device.c: 1048: pBDTEntryOut[ep] = (BDT_ENTRY*)(((uintptr_t)pBDTEntryOut[ep]) ^ 0x0004);
	movf	((c:USBTransferOnePacket@ep))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryOut)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_USBTransferOnePacket+0+0
	movff	postdec2,??_USBTransferOnePacket+0+0+1
	movlw	04h
	xorwf	(??_USBTransferOnePacket+0+0)^00h,c
	movlw	0
	xorwf	(??_USBTransferOnePacket+0+1)^00h,c
	movf	((c:USBTransferOnePacket@ep))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryOut)
	movwf	fsr2l
	clrf	fsr2h
	movff	??_USBTransferOnePacket+0+0,postinc2
	movff	??_USBTransferOnePacket+0+1,postdec2

	line	1050
	
l2711:
;usb_device.c: 1049: };usb_device.c: 1050: return (void*)handle;
		movff	(c:USBTransferOnePacket@handle),(c:?_USBTransferOnePacket)
	movff	(c:USBTransferOnePacket@handle+1),(c:?_USBTransferOnePacket+1)

	line	1051
	
l431:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBTransferOnePacket
	__end_of_USBTransferOnePacket:
	signat	_USBTransferOnePacket,16506
	global	_USBEnableEndpoint

;; *************** function _USBEnableEndpoint *****************
;; Defined at:
;;		line 882 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1    wreg     unsigned char 
;;  options         1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ep              1   11[COMRAM] unsigned char 
;;  p               2    9[COMRAM] PTR unsigned char 
;;		 -> UEP0(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_USBConfigureEndpoint
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	line	882
global __ptext32
__ptext32:
psect	text32
	file	"system/usb_device.c"
	line	882
	global	__size_of_USBEnableEndpoint
	__size_of_USBEnableEndpoint	equ	__end_of_USBEnableEndpoint-_USBEnableEndpoint
	
_USBEnableEndpoint:
;incstack = 0
	callstack 23
;USBEnableEndpoint@ep stored from wreg
	movwf	((c:USBEnableEndpoint@ep))^00h,c
	line	888
	
l2715:
;usb_device.c: 884: unsigned char* p;;usb_device.c: 888: if(options & 0x04)
	
	btfss	((c:USBEnableEndpoint@options))^00h,c,(2)&7
	goto	u1481
	goto	u1480
u1481:
	goto	l2719
u1480:
	line	890
	
l2717:
;usb_device.c: 889: {;usb_device.c: 890: USBConfigureEndpoint(ep, 0);
	movlw	low(0)
	movwf	((c:USBConfigureEndpoint@direction))^00h,c
	movf	((c:USBEnableEndpoint@ep))^00h,c,w
	
	call	_USBConfigureEndpoint
	line	892
	
l2719:
;usb_device.c: 891: };usb_device.c: 892: if(options & 0x02)
	
	btfss	((c:USBEnableEndpoint@options))^00h,c,(1)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l2723
u1490:
	line	894
	
l2721:
;usb_device.c: 893: {;usb_device.c: 894: USBConfigureEndpoint(ep, 1);
	movlw	low(01h)
	movwf	((c:USBConfigureEndpoint@direction))^00h,c
	movf	((c:USBEnableEndpoint@ep))^00h,c,w
	
	call	_USBConfigureEndpoint
	line	903
	
l2723:
;usb_device.c: 895: };usb_device.c: 903: p = (unsigned char*)(&UEP0+ep);
	movlw	low(3952)
	addwf	((c:USBEnableEndpoint@ep))^00h,c,w
	movwf	((c:USBEnableEndpoint@p))^00h,c
	clrf	1+((c:USBEnableEndpoint@p))^00h,c
	movlw	high(3952)
	addwfc	1+((c:USBEnableEndpoint@p))^00h,c
	line	905
	
l2725:
;usb_device.c: 905: *p = options;
	movff	(c:USBEnableEndpoint@p),fsr2l
	movff	(c:USBEnableEndpoint@p+1),fsr2h
	movff	(c:USBEnableEndpoint@options),indf2

	line	906
	
l425:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBEnableEndpoint
	__end_of_USBEnableEndpoint:
	signat	_USBEnableEndpoint,8313
	global	_USBConfigureEndpoint

;; *************** function _USBConfigureEndpoint *****************
;; Defined at:
;;		line 1547 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;  EPNum           1    wreg     unsigned char 
;;  direction       1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EPNum           1    5[COMRAM] unsigned char 
;;  handle          2    6[COMRAM] PTR volatile struct __BD
;;		 -> BDT(32), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBEnableEndpoint
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	line	1547
global __ptext33
__ptext33:
psect	text33
	file	"system/usb_device.c"
	line	1547
	global	__size_of_USBConfigureEndpoint
	__size_of_USBConfigureEndpoint	equ	__end_of_USBConfigureEndpoint-_USBConfigureEndpoint
	
_USBConfigureEndpoint:
;incstack = 0
	callstack 23
;USBConfigureEndpoint@EPNum stored from wreg
	movwf	((c:USBConfigureEndpoint@EPNum))^00h,c
	line	1553
	
l2669:
;usb_device.c: 1549: volatile BDT_ENTRY* handle;;usb_device.c: 1553: handle = (volatile BDT_ENTRY*)&BDT[0];
		movlw	low(1024)
	movwf	((c:USBConfigureEndpoint@handle))^00h,c
	movlw	high(1024)
	movwf	((c:USBConfigureEndpoint@handle+1))^00h,c

	line	1554
	
l2671:
;usb_device.c: 1554: handle += (4*EPNum+2*direction+0u);
	movf	((c:USBConfigureEndpoint@direction))^00h,c,w
	movwf	(??_USBConfigureEndpoint+0+0)^00h,c
	clrf	(??_USBConfigureEndpoint+0+0+1)^00h,c

	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+0+0)^00h,c,f
	rlcf	(??_USBConfigureEndpoint+0+1)^00h,c,f
	movf	((c:USBConfigureEndpoint@EPNum))^00h,c,w
	movwf	(??_USBConfigureEndpoint+2+0)^00h,c
	clrf	(??_USBConfigureEndpoint+2+0+1)^00h,c

	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0)^00h,c
	rlcf	(??_USBConfigureEndpoint+2+1)^00h,c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0)^00h,c
	rlcf	(??_USBConfigureEndpoint+2+1)^00h,c
	movf	(??_USBConfigureEndpoint+0+0)^00h,c,w
	addwf	(??_USBConfigureEndpoint+2+0)^00h,c
	movf	(??_USBConfigureEndpoint+0+1)^00h,c,w
	addwfc	(??_USBConfigureEndpoint+2+1)^00h,c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0)^00h,c
	rlcf	(??_USBConfigureEndpoint+2+1)^00h,c
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0)^00h,c
	rlcf	(??_USBConfigureEndpoint+2+1)^00h,c
	movf	(??_USBConfigureEndpoint+2+0)^00h,c,w
	addwf	((c:USBConfigureEndpoint@handle))^00h,c
	movf	(??_USBConfigureEndpoint+2+1)^00h,c,w
	addwfc	((c:USBConfigureEndpoint@handle+1))^00h,c

	line	1556
	
l2673:
;usb_device.c: 1556: handle->STAT.UOWN = 0;
	movff	(c:USBConfigureEndpoint@handle),fsr2l
	movff	(c:USBConfigureEndpoint@handle+1),fsr2h
	bcf	c:indf2,7
	line	1561
	
l2675:
;usb_device.c: 1561: if(direction == 0)
	movf	((c:USBConfigureEndpoint@direction))^00h,c,w
	btfss	status,2
	goto	u1441
	goto	u1440
u1441:
	goto	l2679
u1440:
	line	1563
	
l2677:
;usb_device.c: 1562: {;usb_device.c: 1563: pBDTEntryOut[EPNum] = handle;
	movf	((c:USBConfigureEndpoint@EPNum))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryOut)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:USBConfigureEndpoint@handle),postinc2
	movff	(c:USBConfigureEndpoint@handle+1),postdec2
	line	1564
;usb_device.c: 1564: }
	goto	l2681
	line	1567
	
l2679:
;usb_device.c: 1565: else;usb_device.c: 1566: {;usb_device.c: 1567: pBDTEntryIn[EPNum] = handle;
	movf	((c:USBConfigureEndpoint@EPNum))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_pBDTEntryIn)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:USBConfigureEndpoint@handle),postinc2
	movff	(c:USBConfigureEndpoint@handle+1),postdec2
	line	1571
	
l2681:
;usb_device.c: 1568: };usb_device.c: 1571: handle->STAT.DTS = 0;
	movff	(c:USBConfigureEndpoint@handle),fsr2l
	movff	(c:USBConfigureEndpoint@handle+1),fsr2h
	bcf	c:indf2,6
	line	1572
	
l2683:
;usb_device.c: 1572: (handle+1)->STAT.DTS = 1;
	lfsr	2,04h
	movf	((c:USBConfigureEndpoint@handle))^00h,c,w
	addwf	fsr2l
	movf	((c:USBConfigureEndpoint@handle+1))^00h,c,w
	addwfc	fsr2h
	bsf	c:indf2,6
	line	1589
	
l461:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBConfigureEndpoint
	__end_of_USBConfigureEndpoint:
	signat	_USBConfigureEndpoint,8313
	global	_USBCheckHIDRequest

;; *************** function _USBCheckHIDRequest *****************
;; Defined at:
;;		line 161 in file "system/usb_device_hid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/4
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	file	"system/usb_device_hid.c"
	line	161
global __ptext34
__ptext34:
psect	text34
	file	"system/usb_device_hid.c"
	line	161
	global	__size_of_USBCheckHIDRequest
	__size_of_USBCheckHIDRequest	equ	__end_of_USBCheckHIDRequest-_USBCheckHIDRequest
	
_USBCheckHIDRequest:
;incstack = 0
	callstack 24
	line	163
	
l2727:
;usb_device_hid.c: 163: if(SetupPkt.Recipient != (0x01)) return;
	movlb	4	; () banked
	movf	((1056))&0ffh,w	;volatile
	andlw	(1<<5)-1
	decf	wreg
	btfsc	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l2731
u1500:
	goto	l670
	line	164
	
l2731:; BSR set to: 4

;usb_device_hid.c: 164: if(SetupPkt.bIntfID != 0x00) return;
	movf	(0+(1056+04h))&0ffh,w	;volatile
	btfsc	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l2735
u1510:
	goto	l670
	line	171
	
l2735:; BSR set to: 4

;usb_device_hid.c: 171: if(SetupPkt.bRequest == 6)
		movlw	6
	xorwf	(0+(1056+01h))&0ffh,w	;volatile
	btfss	status,2
	goto	u1521
	goto	u1520

u1521:
	goto	l2757
u1520:
	goto	l2755
	line	176
	
l2739:; BSR set to: 4

;usb_device_hid.c: 176: if(USBActiveConfiguration == 1)
		decf	((c:_USBActiveConfiguration))^00h,c,w
	btfss	status,2
	goto	u1531
	goto	u1530

u1531:
	goto	l2757
u1530:
	line	178
	
l2741:; BSR set to: 4

;usb_device_hid.c: 177: {;usb_device_hid.c: 178: { inPipes[0].pSrc.bRom = (const uint8_t*)&configDescriptor1 + 18; inPipes[0].wCount.Val = sizeof(USB_HID_DSC)+3; inPipes[0].info.Val = 0x40 | 0x80 | 0x00; };
		movlw	low(_configDescriptor1+012h)
	movwf	((c:_inPipes))^00h,c
	movf	((c:_inPipes))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:_inPipes+1))^00h,c

	
l2743:; BSR set to: 4

	movlw	high(09h)
	movwf	(1+((c:_inPipes)+04h))^00h,c
	movlw	low(09h)
	movwf	(0+((c:_inPipes)+04h))^00h,c
	
l2745:; BSR set to: 4

	movlw	low(0C0h)
	movwf	(0+((c:_inPipes)+03h))^00h,c
	goto	l2757
	line	187
	
l2747:; BSR set to: 4

;usb_device_hid.c: 186: {;usb_device_hid.c: 187: { inPipes[0].pSrc.bRom = (const uint8_t*)&hid_rpt01; inPipes[0].wCount.Val = 29; inPipes[0].info.Val = 0x40 | 0x80 | 0x00; };
		movlw	low(_hid_rpt01)
	movwf	((c:_inPipes))^00h,c
	movf	((c:_inPipes))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:_inPipes+1))^00h,c

	
l2749:; BSR set to: 4

	movlw	high(01Dh)
	movwf	(1+((c:_inPipes)+04h))^00h,c
	movlw	low(01Dh)
	movwf	(0+((c:_inPipes)+04h))^00h,c
	goto	l2745
	line	173
	
l2755:; BSR set to: 4

	movf	(0+(1056+03h))&0ffh,w	;volatile
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 33 to 35
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	33^0	; case 33
	skipnz
	goto	l2739
	xorlw	34^33	; case 34
	skipnz
	goto	l2747
	xorlw	35^34	; case 35
	skipnz
	goto	l2757
	goto	l2757

	line	209
	
l2757:; BSR set to: 4

;usb_device_hid.c: 207: };usb_device_hid.c: 209: if(SetupPkt.RequestType != (0x20>>5))
	swapf	((1056))&0ffh,w	;volatile
	rrcf	wreg,f
	andlw	(1<<2)-1
	decf	wreg
	btfsc	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l2783
u1540:
	goto	l670
	line	227
	
l2761:; BSR set to: 4

;usb_device_hid.c: 227: { inPipes[0].pSrc.bRam = (uint8_t*)&idle_rate; inPipes[0].wCount.Val = 1; inPipes[0].info.Val = 0x40 | 0x80 | 0x01; };
		movlw	low(_idle_rate)
	movwf	((c:_inPipes))^00h,c
	clrf	((c:_inPipes+1))^00h,c

	
l2763:; BSR set to: 4

	movlw	high(01h)
	movwf	(1+((c:_inPipes)+04h))^00h,c
	movlw	low(01h)
	movwf	(0+((c:_inPipes)+04h))^00h,c
	
l2765:; BSR set to: 4

	movlw	low(0C1h)
	movwf	(0+((c:_inPipes)+03h))^00h,c
	line	231
;usb_device_hid.c: 231: break;
	goto	l670
	line	233
	
l2767:; BSR set to: 4

;usb_device_hid.c: 233: inPipes[0].info.Val = 0x00 | 0x80;
	movlw	low(080h)
	movwf	(0+((c:_inPipes)+03h))^00h,c
	line	234
	
l2769:; BSR set to: 4

;usb_device_hid.c: 234: idle_rate = SetupPkt.W_Value.byte.HB;
	movff	0+(1056+03h),(c:_idle_rate)	;volatile
	line	236
;usb_device_hid.c: 235: ;;usb_device_hid.c: 236: break;
	goto	l670
	line	238
	
l2771:; BSR set to: 4

;usb_device_hid.c: 238: { inPipes[0].pSrc.bRam = (uint8_t*)&active_protocol; inPipes[0].wCount.Val = 1; inPipes[0].info.Val = 0x00 | 0x80 | 0x01; };
		movlw	low(_active_protocol)
	movwf	((c:_inPipes))^00h,c
	clrf	((c:_inPipes+1))^00h,c

	
l2773:; BSR set to: 4

	movlw	high(01h)
	movwf	(1+((c:_inPipes)+04h))^00h,c
	movlw	low(01h)
	movwf	(0+((c:_inPipes)+04h))^00h,c
	
l2775:; BSR set to: 4

	movlw	low(081h)
	movwf	(0+((c:_inPipes)+03h))^00h,c
	line	242
;usb_device_hid.c: 242: break;
	goto	l670
	line	244
	
l2777:; BSR set to: 4

;usb_device_hid.c: 244: inPipes[0].info.Val = 0x00 | 0x80;
	movlw	low(080h)
	movwf	(0+((c:_inPipes)+03h))^00h,c
	line	245
	
l2779:; BSR set to: 4

;usb_device_hid.c: 245: active_protocol = SetupPkt.W_Value.byte.LB;
	movff	0+(1056+02h),(c:_active_protocol)	;volatile
	line	246
;usb_device_hid.c: 246: break;
	goto	l670
	line	214
	
l2783:; BSR set to: 4

	movf	(0+(1056+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "simple"
; Number of cases is 6, Range of values is 1 to 11
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l670
	xorlw	2^1	; case 2
	skipnz
	goto	l2761
	xorlw	3^2	; case 3
	skipnz
	goto	l2771
	xorlw	9^3	; case 9
	skipnz
	goto	l670
	xorlw	10^9	; case 10
	skipnz
	goto	l2767
	xorlw	11^10	; case 11
	skipnz
	goto	l2777
	goto	l670

	line	249
	
l670:; BSR set to: 4

	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCheckHIDRequest
	__end_of_USBCheckHIDRequest:
	signat	_USBCheckHIDRequest,89
	global	_USBCtrlTrfOutHandler

;; *************** function _USBCtrlTrfOutHandler *****************
;; Defined at:
;;		line 2545 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_USBCtrlTrfRxService
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	file	"system/usb_device.c"
	line	2545
global __ptext35
__ptext35:
psect	text35
	file	"system/usb_device.c"
	line	2545
	global	__size_of_USBCtrlTrfOutHandler
	__size_of_USBCtrlTrfOutHandler	equ	__end_of_USBCtrlTrfOutHandler-_USBCtrlTrfOutHandler
	
_USBCtrlTrfOutHandler:; BSR set to: 4

;incstack = 0
	callstack 22
	line	2547
	
l3267:
;usb_device.c: 2547: if(controlTransferState == 2)
		movlw	2
	xorwf	((c:_controlTransferState))^00h,c,w
	btfss	status,2
	goto	u2161
	goto	u2160

u2161:
	goto	l3271
u2160:
	line	2549
	
l3269:
;usb_device.c: 2548: {;usb_device.c: 2549: USBCtrlTrfRxService();
	call	_USBCtrlTrfRxService	;wreg free
	line	2550
;usb_device.c: 2550: }
	goto	l570
	line	2555
	
l3271:
;usb_device.c: 2551: else;usb_device.c: 2552: {;usb_device.c: 2555: controlTransferState = 0;
	movlw	low(0)
	movwf	((c:_controlTransferState))^00h,c
	line	2562
;usb_device.c: 2562: if(BothEP0OutUOWNsSet == 0)
	movf	((c:_BothEP0OutUOWNsSet))^00h,c,w
	btfss	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l3279
u2170:
	line	2564
	
l3273:
;usb_device.c: 2563: {;usb_device.c: 2564: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2565
;usb_device.c: 2565: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	2566
	
l3275:
;usb_device.c: 2566: pBDTEntryEP0OutNext->STAT.Val = 0x00|(0x08 & 0x08)|0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	2567
	
l3277:
;usb_device.c: 2567: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2568
;usb_device.c: 2568: }
	goto	l570
	line	2571
	
l3279:
;usb_device.c: 2569: else;usb_device.c: 2570: {;usb_device.c: 2571: BothEP0OutUOWNsSet = 0;
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet))^00h,c
	line	2574
	
l570:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCtrlTrfOutHandler
	__end_of_USBCtrlTrfOutHandler:
	signat	_USBCtrlTrfOutHandler,89
	global	_USBCtrlTrfRxService

;; *************** function _USBCtrlTrfRxService *****************
;; Defined at:
;;		line 1856 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byteToRead      1    1[COMRAM] unsigned char 
;;  i               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_USBCtrlEPAllowStatusStage
;; This function is called by:
;;		_USBCtrlTrfOutHandler
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	line	1856
global __ptext36
__ptext36:
psect	text36
	file	"system/usb_device.c"
	line	1856
	global	__size_of_USBCtrlTrfRxService
	__size_of_USBCtrlTrfRxService	equ	__end_of_USBCtrlTrfRxService-_USBCtrlTrfRxService
	
_USBCtrlTrfRxService:
;incstack = 0
	callstack 22
	line	1863
	
l3147:
;usb_device.c: 1858: uint8_t byteToRead;;usb_device.c: 1859: uint8_t i;;usb_device.c: 1863: byteToRead = pBDTEntryEP0OutCurrent->CNT;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutCurrent))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	((c:USBCtrlTrfRxService@byteToRead))^00h,c
	line	1869
	
l3149:
;usb_device.c: 1869: if(byteToRead > outPipes[0].wCount.Val)
	movf	((c:USBCtrlTrfRxService@byteToRead))^00h,c,w
	subwf	(0+((c:_outPipes)+04h))^00h,c,w
	movlw	0
	subwfb	(1+((c:_outPipes)+04h))^00h,c,w
	btfsc	status,0
	goto	u2091
	goto	u2090
u2091:
	goto	l3153
u2090:
	line	1871
	
l3151:
;usb_device.c: 1870: {;usb_device.c: 1871: byteToRead = outPipes[0].wCount.Val;
	movff	0+((c:_outPipes)+04h),(c:USBCtrlTrfRxService@byteToRead)
	line	1874
	
l3153:
;usb_device.c: 1872: };usb_device.c: 1874: outPipes[0].wCount.Val -= byteToRead;
	movf	((c:USBCtrlTrfRxService@byteToRead))^00h,c,w
	subwf	(0+((c:_outPipes)+04h))^00h,c
	movlw	0
	subwfb	(1+((c:_outPipes)+04h))^00h,c
	line	1878
	
l3155:
;usb_device.c: 1878: for(i=0;i<byteToRead;i++)
	movlw	low(0)
	movwf	((c:USBCtrlTrfRxService@i))^00h,c
	goto	l3163
	line	1880
	
l3157:
;usb_device.c: 1879: {;usb_device.c: 1880: *outPipes[0].pDst.bRam++ = CtrlTrfData[i];
	movlw	low(1064)
	addwf	((c:USBCtrlTrfRxService@i))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(1064)
	addwfc	1+c:fsr2l
	movff	(c:_outPipes),fsr1l
	movff	(c:_outPipes+1),fsr1h
	movff	indf2,indf1
	
l3159:
	infsnz	((c:_outPipes))^00h,c
	incf	((c:_outPipes+1))^00h,c
	line	1878
	
l3161:
	incf	((c:USBCtrlTrfRxService@i))^00h,c
	
l3163:
		movf	((c:USBCtrlTrfRxService@byteToRead))^00h,c,w
	subwf	((c:USBCtrlTrfRxService@i))^00h,c,w
	btfss	status,0
	goto	u2101
	goto	u2100

u2101:
	goto	l3157
u2100:
	line	1885
	
l3165:
;usb_device.c: 1881: };usb_device.c: 1885: if(outPipes[0].wCount.Val > 0)
	movf	(0+((c:_outPipes)+04h))^00h,c,w
iorwf	(1+((c:_outPipes)+04h))^00h,c,w
	btfsc	status,2
	goto	u2111
	goto	u2110

u2111:
	goto	l3179
u2110:
	line	1887
	
l3167:
;usb_device.c: 1886: {;usb_device.c: 1887: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1888
;usb_device.c: 1888: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&CtrlTrfData));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0428h)
	movwf	postinc2,c
	movlw	high(0428h)
	movwf	postdec2,c
	line	1889
	
l3169:
;usb_device.c: 1889: if(pBDTEntryEP0OutCurrent->STAT.DTS == 0)
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	btfsc	c:indf2,6
	goto	u2121
	goto	u2120
u2121:
	goto	l3175
u2120:
	line	1891
	
l3171:
;usb_device.c: 1890: {;usb_device.c: 1891: pBDTEntryEP0OutNext->STAT.Val = 0x40|(0x08 & 0x08);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1892
	
l3173:
;usb_device.c: 1892: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1893
;usb_device.c: 1893: }
	goto	l502
	line	1896
	
l3175:
;usb_device.c: 1894: else;usb_device.c: 1895: {;usb_device.c: 1896: pBDTEntryEP0OutNext->STAT.Val = 0x00|(0x08 & 0x08);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1897
	
l3177:
;usb_device.c: 1897: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	l502
	line	1905
	
l3179:
;usb_device.c: 1900: else;usb_device.c: 1901: {;usb_device.c: 1905: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1906
;usb_device.c: 1906: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	1910
	
l3181:
;usb_device.c: 1910: pBDTEntryEP0OutNext->STAT.Val = 0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1911
	
l3183:
;usb_device.c: 1911: pBDTEntryEP0OutNext->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1930
	
l500:
	line	1931
;usb_device.c: 1930: };usb_device.c: 1931: outPipes[0].info.bits.busy = 0;
	bcf	(0+((c:_outPipes)+03h))^00h,c,7
	line	1945
	
l3187:
;usb_device.c: 1945: if(USBDeferStatusStagePacket == 0)
	movf	((c:_USBDeferStatusStagePacket))^00h,c,w	;volatile
	btfss	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l502
u2130:
	line	1947
	
l3189:
;usb_device.c: 1946: {;usb_device.c: 1947: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	line	1951
	
l502:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCtrlTrfRxService
	__end_of_USBCtrlTrfRxService:
	signat	_USBCtrlTrfRxService,89
	global	_USBCtrlEPAllowStatusStage

;; *************** function _USBCtrlEPAllowStatusStage *****************
;; Defined at:
;;		line 1420 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;;		_USBCtrlEPServiceComplete
;;		_USBCtrlTrfRxService
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	line	1420
global __ptext37
__ptext37:
psect	text37
	file	"system/usb_device.c"
	line	1420
	global	__size_of_USBCtrlEPAllowStatusStage
	__size_of_USBCtrlEPAllowStatusStage	equ	__end_of_USBCtrlEPAllowStatusStage-_USBCtrlEPAllowStatusStage
	
_USBCtrlEPAllowStatusStage:
;incstack = 0
	callstack 22
	line	1427
	
l2855:
;usb_device.c: 1427: if(USBStatusStageEnabledFlag1 == 0)
	movf	((c:_USBStatusStageEnabledFlag1))^00h,c,w	;volatile
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l450
u1640:
	line	1429
	
l2857:
;usb_device.c: 1428: {;usb_device.c: 1429: USBStatusStageEnabledFlag1 = 1;
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag1))^00h,c	;volatile
	line	1430
;usb_device.c: 1430: if(USBStatusStageEnabledFlag2 == 0)
	movf	((c:_USBStatusStageEnabledFlag2))^00h,c,w	;volatile
	btfss	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l450
u1650:
	line	1432
	
l2859:
;usb_device.c: 1431: {;usb_device.c: 1432: USBStatusStageEnabledFlag2 = 1;
	movlw	low(01h)
	movwf	((c:_USBStatusStageEnabledFlag2))^00h,c	;volatile
	line	1436
	
l2861:
;usb_device.c: 1436: if(controlTransferState == 2)
		movlw	2
	xorwf	((c:_controlTransferState))^00h,c,w
	btfss	status,2
	goto	u1661
	goto	u1660

u1661:
	goto	l2869
u1660:
	line	1438
	
l2863:
;usb_device.c: 1437: {;usb_device.c: 1438: pBDTEntryIn[0]->CNT = 0;
	lfsr	2,01h
	movf	((c:_pBDTEntryIn))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryIn+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0)
	movwf	indf2
	line	1439
	
l2865:
;usb_device.c: 1439: pBDTEntryIn[0]->STAT.Val = 0x40|(0x08 & 0x08);
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	1440
	
l2867:
;usb_device.c: 1440: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1441
;usb_device.c: 1441: }
	goto	l450
	line	1442
	
l2869:
;usb_device.c: 1442: else if(controlTransferState == 1)
		decf	((c:_controlTransferState))^00h,c,w
	btfss	status,2
	goto	u1671
	goto	u1670

u1671:
	goto	l446
u1670:
	line	1444
	
l2871:
;usb_device.c: 1443: {;usb_device.c: 1444: BothEP0OutUOWNsSet = 0;
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet))^00h,c
	line	1449
	
l2873:
;usb_device.c: 1449: pBDTEntryEP0OutCurrent->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutCurrent))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1450
	
l2875:
;usb_device.c: 1450: pBDTEntryEP0OutCurrent->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	1451
	
l2877:
;usb_device.c: 1451: pBDTEntryEP0OutCurrent->STAT.Val = 0x04;
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	1452
	
l2879:
;usb_device.c: 1452: pBDTEntryEP0OutCurrent->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	1453
	
l2881:
;usb_device.c: 1453: BothEP0OutUOWNsSet = 1;
	movlw	low(01h)
	movwf	((c:_BothEP0OutUOWNsSet))^00h,c
	line	1457
	
l2883:
;usb_device.c: 1457: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1458
	
l2885:
;usb_device.c: 1458: pBDTEntryEP0OutNext->ADR = ((uint16_t)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0420h)
	movwf	postinc2,c
	movlw	high(0420h)
	movwf	postdec2,c
	line	1459
	
l2887:
;usb_device.c: 1459: pBDTEntryEP0OutNext->STAT.Val = 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(080h)
	movwf	indf2
	goto	l450
	line	1461
	
l446:
	line	1463
	
l450:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCtrlEPAllowStatusStage
	__end_of_USBCtrlEPAllowStatusStage:
	signat	_USBCtrlEPAllowStatusStage,89
	global	_USBCtrlTrfInHandler

;; *************** function _USBCtrlTrfInHandler *****************
;; Defined at:
;;		line 2599 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lastDTS         1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	line	2599
global __ptext38
__ptext38:
psect	text38
	file	"system/usb_device.c"
	line	2599
	global	__size_of_USBCtrlTrfInHandler
	__size_of_USBCtrlTrfInHandler	equ	__end_of_USBCtrlTrfInHandler-_USBCtrlTrfInHandler
	
_USBCtrlTrfInHandler:
;incstack = 0
	callstack 23
	line	2603
	
l3281:
;usb_device.c: 2601: uint8_t lastDTS;;usb_device.c: 2603: lastDTS = pBDTEntryIn[0]->STAT.DTS;
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0
	btfsc	c:indf2,6
	movlw	1
	movwf	((c:USBCtrlTrfInHandler@lastDTS))^00h,c
	line	2606
	
l3283:
;usb_device.c: 2606: pBDTEntryIn[0] = (volatile BDT_ENTRY*)(((uintptr_t)pBDTEntryIn[0]) ^ 0x0004);
	movlw	04h
	xorwf	((c:_pBDTEntryIn))^00h,c,w
	movwf	((c:_pBDTEntryIn))^00h,c
	movf	((c:_pBDTEntryIn+1))^00h,c,w
	movwf	1+((c:_pBDTEntryIn))^00h,c
	line	2611
	
l3285:
;usb_device.c: 2611: if(USBDeviceState == ADR_PENDING_STATE)
		movlw	8
	xorwf	((c:_USBDeviceState))^00h,c,w
	btfss	status,2
	goto	u2181
	goto	u2180

u2181:
	goto	l3295
u2180:
	line	2613
	
l3287:
;usb_device.c: 2612: {;usb_device.c: 2613: UADDR = (SetupPkt.bDevADR & 0x7F);
	movlb	4	; () banked
	movf	(0+(1056+02h))&0ffh,w	;volatile
	andlw	low(07Fh)
	movwf	((c:3950))^0f00h,c	;volatile
	line	2614
	
l3289:; BSR set to: 4

;usb_device.c: 2614: if(UADDR != 0u)
	movf	((c:3950))^0f00h,c,w
	btfsc	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l3293
u2190:
	line	2616
	
l3291:; BSR set to: 4

;usb_device.c: 2615: {;usb_device.c: 2616: USBDeviceState=ADDRESS_STATE;
	movlw	low(010h)
	movwf	((c:_USBDeviceState))^00h,c
	line	2617
;usb_device.c: 2617: }
	goto	l3295
	line	2620
	
l3293:; BSR set to: 4

;usb_device.c: 2618: else;usb_device.c: 2619: {;usb_device.c: 2620: USBDeviceState=DEFAULT_STATE;
	movlw	low(04h)
	movwf	((c:_USBDeviceState))^00h,c
	line	2625
	
l3295:
;usb_device.c: 2621: };usb_device.c: 2622: };usb_device.c: 2625: if(controlTransferState == 1)
		decf	((c:_controlTransferState))^00h,c,w
	btfss	status,2
	goto	u2201
	goto	u2200

u2201:
	goto	l576
u2200:
	line	2627
	
l3297:
;usb_device.c: 2626: {;usb_device.c: 2627: pBDTEntryIn[0]->ADR = ((uint16_t)(CtrlTrfData));
	lfsr	2,02h
	movf	((c:_pBDTEntryIn))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryIn+1))^00h,c,w
	addwfc	fsr2h
	movlw	low(0428h)
	movwf	postinc2,c
	movlw	high(0428h)
	movwf	postdec2,c
	line	2628
	
l3299:
;usb_device.c: 2628: USBCtrlTrfTxService();
	call	_USBCtrlTrfTxService	;wreg free
	line	2634
	
l3301:
;usb_device.c: 2634: if(shortPacketStatus == 2)
		movlw	2
	xorwf	((c:_shortPacketStatus))^00h,c,w
	btfss	status,2
	goto	u2211
	goto	u2210

u2211:
	goto	l3307
u2210:
	line	2638
	
l3303:
;usb_device.c: 2635: {;usb_device.c: 2638: pBDTEntryIn[0]->STAT.Val = 0x04;
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(04h)
	movwf	indf2
	line	2639
	
l3305:
;usb_device.c: 2639: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2640
;usb_device.c: 2640: }
	goto	l584
	line	2643
	
l3307:
;usb_device.c: 2641: else;usb_device.c: 2642: {;usb_device.c: 2643: if(lastDTS == 0)
	movf	((c:USBCtrlTrfInHandler@lastDTS))^00h,c,w
	btfss	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l3313
u2220:
	line	2645
	
l3309:
;usb_device.c: 2644: {;usb_device.c: 2645: pBDTEntryIn[0]->STAT.Val = 0x40|(0x08 & 0x08);
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(048h)
	movwf	indf2
	line	2646
	
l3311:
;usb_device.c: 2646: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	line	2647
;usb_device.c: 2647: }
	goto	l584
	line	2650
	
l3313:
;usb_device.c: 2648: else;usb_device.c: 2649: {;usb_device.c: 2650: pBDTEntryIn[0]->STAT.Val = 0x00|(0x08 & 0x08);
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2651
	
l3315:
;usb_device.c: 2651: pBDTEntryIn[0]->STAT.Val |= 0x80;
	movff	(c:_pBDTEntryIn),fsr2l
	movff	(c:_pBDTEntryIn+1),fsr2h
	movlw	0+(7/8)
	bsf	plusw2,(7)&7
	goto	l584
	line	2655
	
l576:
	line	2660
;usb_device.c: 2655: else;usb_device.c: 2656: {;usb_device.c: 2660: if(outPipes[0].info.bits.busy == 1)
	btfss	(0+((c:_outPipes)+03h))^00h,c,7
	goto	u2231
	goto	u2230
u2231:
	goto	l3319
u2230:
	line	2665
	
l583:
	line	2666
;usb_device.c: 2665: };usb_device.c: 2666: outPipes[0].info.bits.busy = 0;
	bcf	(0+((c:_outPipes)+03h))^00h,c,7
	line	2669
	
l3319:
;usb_device.c: 2667: };usb_device.c: 2669: controlTransferState = 0;
	movlw	low(0)
	movwf	((c:_controlTransferState))^00h,c
	line	2674
	
l584:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCtrlTrfInHandler
	__end_of_USBCtrlTrfInHandler:
	signat	_USBCtrlTrfInHandler,89
	global	_USBCtrlTrfTxService

;; *************** function _USBCtrlTrfTxService *****************
;; Defined at:
;;		line 1775 in file "system/usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byteToSend      1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/4
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4  BANK5h  BANK5l   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCtrlEPAllowDataStage
;;		_USBCtrlTrfInHandler
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	1775
global __ptext39
__ptext39:
psect	text39
	file	"system/usb_device.c"
	line	1775
	global	__size_of_USBCtrlTrfTxService
	__size_of_USBCtrlTrfTxService	equ	__end_of_USBCtrlTrfTxService-_USBCtrlTrfTxService
	
_USBCtrlTrfTxService:
;incstack = 0
	callstack 21
	line	1781
	
l2811:
;usb_device.c: 1777: uint8_t byteToSend;;usb_device.c: 1781: byteToSend = 8;
	movlw	low(08h)
	movwf	((c:USBCtrlTrfTxService@byteToSend))^00h,c
	line	1782
	
l2813:
;usb_device.c: 1782: if(inPipes[0].wCount.Val < (uint8_t)8)
		movf	(1+((c:_inPipes)+04h))^00h,c,w
	bnz	u1561
	movlw	8
	subwf	 (0+((c:_inPipes)+04h))^00h,c,w
	btfsc	status,0
	goto	u1561
	goto	u1560

u1561:
	goto	l2825
u1560:
	line	1784
	
l2815:
;usb_device.c: 1783: {;usb_device.c: 1784: byteToSend = inPipes[0].wCount.Val;
	movff	0+((c:_inPipes)+04h),(c:USBCtrlTrfTxService@byteToSend)
	line	1791
	
l2817:
;usb_device.c: 1791: if(shortPacketStatus == 0)
	movf	((c:_shortPacketStatus))^00h,c,w
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l2821
u1570:
	line	1793
	
l2819:
;usb_device.c: 1792: {;usb_device.c: 1793: shortPacketStatus = 1;
	movlw	low(01h)
	movwf	((c:_shortPacketStatus))^00h,c
	line	1794
;usb_device.c: 1794: }
	goto	l2825
	line	1795
	
l2821:
;usb_device.c: 1795: else if(shortPacketStatus == 1)
		decf	((c:_shortPacketStatus))^00h,c,w
	btfss	status,2
	goto	u1581
	goto	u1580

u1581:
	goto	l2825
u1580:
	line	1797
	
l2823:
;usb_device.c: 1796: {;usb_device.c: 1797: shortPacketStatus = 2;
	movlw	low(02h)
	movwf	((c:_shortPacketStatus))^00h,c
	line	1803
	
l2825:
;usb_device.c: 1798: };usb_device.c: 1799: };usb_device.c: 1803: inPipes[0].wCount.Val -= byteToSend;
	movf	((c:USBCtrlTrfTxService@byteToSend))^00h,c,w
	subwf	(0+((c:_inPipes)+04h))^00h,c
	movlw	0
	subwfb	(1+((c:_inPipes)+04h))^00h,c
	line	1808
	
l2827:
;usb_device.c: 1808: pBDTEntryIn[0]->CNT = byteToSend;
	lfsr	2,01h
	movf	((c:_pBDTEntryIn))^00h,c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryIn+1))^00h,c,w
	addwfc	fsr2h
	movff	(c:USBCtrlTrfTxService@byteToSend),indf2

	line	1812
	
l2829:
;usb_device.c: 1812: pDst = ( uint8_t*)CtrlTrfData;
		movlw	low(1064)
	movwf	((c:_pDst))^00h,c
	movlw	high(1064)
	movwf	((c:_pDst+1))^00h,c

	line	1813
	
l2831:
;usb_device.c: 1813: if(inPipes[0].info.bits.ctrl_trf_mem == 0x00)
	btfsc	(0+((c:_inPipes)+03h))^00h,c,0
	goto	u1591
	goto	u1590
u1591:
	goto	l2853
u1590:
	goto	l2843
	line	1817
	
l2835:
;usb_device.c: 1816: {;usb_device.c: 1817: *pDst++ = *inPipes[0].pSrc.bRom++;
	movff	(c:_inPipes),tblptrl
	movff	(c:_inPipes+1),tblptrh
	clrf	tblptru
	
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1607
	tblrd	*
	
	movf	tablat,w
	bra	u1600
u1607:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u1600:
	movwf	indf2
	
l2837:
	infsnz	((c:_inPipes))^00h,c
	incf	((c:_inPipes+1))^00h,c
	
l2839:
	infsnz	((c:_pDst))^00h,c
	incf	((c:_pDst+1))^00h,c
	line	1818
	
l2841:
;usb_device.c: 1818: byteToSend--;
	decf	((c:USBCtrlTrfTxService@byteToSend))^00h,c
	line	1815
	
l2843:
	movf	((c:USBCtrlTrfTxService@byteToSend))^00h,c,w
	btfss	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l2835
u1610:
	goto	l489
	line	1825
	
l2845:
;usb_device.c: 1824: {;usb_device.c: 1825: *pDst++ = *inPipes[0].pSrc.bRam++;
	movff	(c:_inPipes),tblptrl
	movff	(c:_inPipes+1),tblptrh
	clrf	tblptru
	
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1627
	tblrd	*
	
	movf	tablat,w
	bra	u1620
u1627:
	movff	tblptrl,fsr1l
	movff	tblptrh,fsr1h
	movf	indf1,w
u1620:
	movwf	indf2
	
l2847:
	infsnz	((c:_inPipes))^00h,c
	incf	((c:_inPipes+1))^00h,c
	
l2849:
	infsnz	((c:_pDst))^00h,c
	incf	((c:_pDst+1))^00h,c
	line	1826
	
l2851:
;usb_device.c: 1826: byteToSend--;
	decf	((c:USBCtrlTrfTxService@byteToSend))^00h,c
	line	1823
	
l2853:
	movf	((c:USBCtrlTrfTxService@byteToSend))^00h,c,w
	btfss	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l2845
u1630:
	line	1829
	
l489:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USBCtrlTrfTxService
	__end_of_USBCtrlTrfTxService:
	signat	_USBCtrlTrfTxService,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
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
