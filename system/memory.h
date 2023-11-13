#ifndef MEMORY_H
#define MEMORY_H

#ifndef PROG_ADDR
    #define PROG_ADDR 0x6600
#endif

#include "system.h"

uint8_t flash_write_B32(void);
void flash_read_byte();
void fuses_write(uint8_t data,uint8_t bit_con);
void erase_falsh();
uint8_t EEPROM_reade(uint8_t addr);
void EEPROM_write(uint8_t data,uint8_t addr);

#endif