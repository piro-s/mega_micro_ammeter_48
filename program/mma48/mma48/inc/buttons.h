/*
 * buttons.h
 *
 * Created: 18.04.2023 11:43:32
 *  Author: piro.tex
 */ 


#ifndef __buttons_h__
#define __buttons_h__


///--- includes
#include <avr/io.h>
#include "main.h"


///--- defines
#define btn_ok_port_set DDRB
#define btn_ok_port PINB
#define btn_ok_pin 1

#define btn_down_port_set DDRB
#define btn_down_port PINB
#define btn_down_pin 2


///--- enums
enum buttons
{
    button_press            = PinSet,
    button_unpress          = PinReset,
    
    button_ok               = 0,
    button_down             = 1,
};


///---functions
void buttons_init(void); // Init buttons
uint8_t button_read(uint8_t button); // Read button state


#endif