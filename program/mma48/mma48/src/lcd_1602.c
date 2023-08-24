/*
 * lcd_1602.c
 *
 * Library for LCD 1602.
 *
 * Library information:
 * - 4 bit data (change pins in defines if needed).
 * - font 5x8;
 * - no display shift.
 *
 * Created: 12.04.2023 10:40:30
 *  Author: piro.tex
 */ 


///--- includes
#include "../inc/lcd_1602.h"
#include <stdlib.h>
#include <util/delay.h>


///--- functions
void lcd_write_4bit(uint8_t data) // Send data (4 bits)
{
    WritePin(lcd_db4_port, lcd_db4_pin, ((1 << 0) & data ? PinSet : PinReset)); // LCD D4
    WritePin(lcd_db5_port, lcd_db5_pin, ((1 << 1) & data ? PinSet : PinReset)); // LCD D5
    WritePin(lcd_db6_port, lcd_db6_pin, ((1 << 2) & data ? PinSet : PinReset)); // LCD D6
    WritePin(lcd_db7_port, lcd_db7_pin, ((1 << 3) & data ? PinSet : PinReset)); // LCD D7
    
    WritePin(lcd_e_port, lcd_e_pin, PinSet); // LCD E set
    WritePin(lcd_e_port, lcd_e_pin, PinReset); // LCD E reset
    
    return;
} // void lcd_write_4bit(uint8_t data)

void lcd_write(uint8_t rs, uint8_t data) // Send data or command
{
    WritePin(lcd_rs_port, lcd_rs_pin, (rs ? PinSet : PinReset)); // LCD RS command or data
    lcd_write_4bit(data >> 4);
    lcd_write_4bit(data);
    _delay_ms(1); // Wait 1 ms before next send
    
    return;
} // void lcd_write(uint8_t rs, uint8_t data)

void lcd_init(void) // Init LCD
{
    // Init pins as output
    SetPinOutput(lcd_rs_port_set, lcd_rs_pin); // LCD RS
    SetPinOutput(lcd_e_port_set, lcd_e_pin); // LCD E
    SetPinOutput(lcd_db4_port_set, lcd_db4_pin); // LCD DB4
    SetPinOutput(lcd_db5_port_set, lcd_db5_pin); // LCD DB5
    SetPinOutput(lcd_db6_port_set, lcd_db6_pin); // LCD DB6
    SetPinOutput(lcd_db7_port_set, lcd_db7_pin); // LCD DB7
        
    // Init zeros in lcd pins
    WritePin(lcd_rs_port, lcd_rs_pin, PinReset); // LCD RS
    WritePin(lcd_e_port, lcd_e_pin, PinReset); // LCD E
    WritePin(lcd_db4_port, lcd_db4_pin, PinReset); // LCD DB4
    WritePin(lcd_db5_port, lcd_db5_pin, PinReset); // LCD DB5
    WritePin(lcd_db6_port, lcd_db6_pin, PinReset); // LCD DB6
    WritePin(lcd_db7_port, lcd_db7_pin, PinReset); // LCD DB7
        
    
    // Init 
    _delay_ms(20); // Wait more than 15 ms after power on
    lcd_write_4bit(0b0011);
    _delay_ms(5); // Wait more than 4.1 ms
    lcd_write_4bit(0b0011);
    _delay_ms(1); // Wait more than 100 us
    lcd_write_4bit(0b0011);
    _delay_ms(1); // Wait more than 100 us
    lcd_write_4bit(0b0010); // Function set - interface 4 bits
    _delay_ms(1); // Wait more than 100 us
    lcd_write(lcd_rs_c, 0b00101000); // Function set - two lines and font 5x8
    lcd_write(lcd_rs_c, 0b00001100); // Function set - display on
    lcd_write(lcd_rs_c, 0b00000001); // Function set - display clear
    _delay_ms(1); // Wait more than 100 us
    lcd_write(lcd_rs_c, 0b00000110); // Entry mode set - no display shift
    
    return;
} // void lcd_init(void)

void lcd_set_cursor(uint8_t r, uint8_t c) // Set cursor
{
    if(r >= lcd_row) r = 0;
    if(c >= lcd_column) c = 0;
    
    lcd_write(lcd_rs_c, 0x80 | (0x40 * r + c));
} // void lcd_set_cursor(uint8_t r, uint8_t c)

void lcd_print_symbol(char symbol) // Print symbol
{
    lcd_write(lcd_rs_d, symbol); // Send data
    
    return;
} // void lcd_print_symbol(char symbol)

void lcd_print_string(char* string) // Print string
{
    while(*string != 0)
        lcd_print_symbol(*string++);
    
    return;
} // void lcd_print_string(char* string)

void lcd_print_uint(uint32_t value) // Print uint16_t (up to 5 integers)
{
    //--  Up to 5 integers
    char* buffer[5] = {0};
    utoa(value, buffer, 10);
    lcd_print_string(buffer);
    
    return;
} // void lcd_print_uint(uint32_t value)

void lcd_print_float(float value) // Print float
{
    //-- Decimal - 2 digits after dot
    uint32_t value_dec = (value - (uint32_t)value) * 100; // Decimal
    
    lcd_print_uint((uint32_t)value);
    lcd_print_symbol('.');
    lcd_print_uint(value_dec);
    
    return;
} // void lcd_print_float(float value)

void lcd_clear(void) // Clear LCD output
{
    lcd_write(lcd_rs_c, 0b00000001); // Function set - display clear
    
    return;
} // void lcd_clear(void)

void lcd_clear_area(uint8_t r, uint8_t c, uint8_t length) // Clear LCD area
{
    lcd_set_cursor(r, c);
    for(uint8_t it = 0; it < length; it++)
        lcd_print_symbol(' ');
    
    return;
} // void lcd_clear_area(uint8_t r, uint8_t c, uint8_t length)