/*
 * main.h
 *
 * Created: 12.04.2023 11:57:19
 *  Author: piro.tex
 */ 


#ifndef __main_h__
#define __main_h__


///--- define consts
#define F_CPU 14745600UL


///--- includes
#include <avr/io.h>
#include <util/delay.h>


///--- define macros
#define PinSet 1
#define PinReset 0

#define SetBit(port, pin)           port |= (1 << pin)
#define ClearBit(port, pin)         port &= ~(1 << pin)
#define InvBit(port, pin)           port ^= (1 << pin)
#define BitIsSet(port, pin)         ((port & (1 << pin)) != 0)
#define BitIsClear(port, pin)       ((port & (1 << pin)) == 0)

#define ReadPin(port, pin) (port & (1 << pin))
#define WritePin(port, pin, value) if(value) SetBit(port, pin); else ClearBit(port, pin);

#define SetPinInput(reg, pin) ClearBit(reg, pin)
#define SetPinOutput(reg, pin) SetBit(reg, pin)


#endif // __main_h__
