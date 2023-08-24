/*
 * lcd_1602.h
 *
 * Library for LCD 1602.
 * 
 * Library information:
 * - 4 bit data (change pins in defines if needed).
 * - font 5x8;
 * - no display shift. 
 *
 * Created: 12.04.2023 10:40:12
 *  Author: piro.tex
 */ 

#ifndef __lcd_1602_h__
#define __lcd_1602_h__

///--- includes
#include <avr/io.h>
#include "main.h"


///--- defines
#define lcd_rs_port_set DDRD
#define lcd_rs_port PORTD
#define lcd_rs_pin 2

#define lcd_e_port_set DDRD
#define lcd_e_port PORTD
#define lcd_e_pin 3

#define lcd_db4_port_set DDRB
#define lcd_db4_port PORTB
#define lcd_db4_pin 0
#define lcd_db5_port_set DDRD
#define lcd_db5_port PORTD
#define lcd_db5_pin 7
#define lcd_db6_port_set DDRD
#define lcd_db6_port PORTD
#define lcd_db6_pin 6
#define lcd_db7_port_set DDRD
#define lcd_db7_port PORTD
#define lcd_db7_pin 5


///--- enums
enum lcd
{
    lcd_rs_c        = PinReset, // LCD command
    lcd_rs_d        = PinSet, // LCD data
    
    lcd_row         = 2, // LCD row
    lcd_column      = 16, // LCD column
};


///--- functions
void lcd_write_4bit(uint8_t data); // Send data (4 bits)
void lcd_write(uint8_t rs, uint8_t data); // Send data or command
void lcd_init(void); // Init LCD

void lcd_set_cursor(uint8_t r, uint8_t c); // Set cursor
void lcd_print_symbol(char symbol); // Print symbol
void lcd_print_string(char* string); // Print string
void lcd_print_uint(uint32_t value); // Print uint16_t
void lcd_print_float(float value); // Print float
void lcd_clear(void); // Clear LCD output
void lcd_clear_area(uint8_t r, uint8_t c, uint8_t length); // Clear LCD area


#endif // __lcd_1602_h__