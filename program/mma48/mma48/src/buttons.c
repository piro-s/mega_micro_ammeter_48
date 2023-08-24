/*
 * buttons.c
 *
 * Created: 18.04.2023 11:43:43
 *  Author: piro.tex
 */ 


///--- includes
#include "../inc/buttons.h"


///---functions
void buttons_init(void) // Init buttons
{
    SetPinInput(btn_ok_port_set, btn_ok_pin);
    SetPinInput(btn_down_port_set, btn_down_pin);
    
    return;
} // void buttons_init(void)

uint8_t button_read(uint8_t button) // Read button state
{
    uint8_t state = 0;
    
    if(button == button_ok)
        state = ReadPin(btn_ok_port, btn_ok_pin);
    else if(button == button_down)
        state = ReadPin(btn_down_port, btn_down_pin);
    
    if(state == PinReset) // Button pullup to 5V, so logic invers.
        state = button_press;
    else
        state = button_unpress;
    
    return state;
} // uint8_t button_read(uint8_t button)
