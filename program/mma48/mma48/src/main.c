/*
 * mma48.c
 *
 * Created: 12.04.2023 10:06:14
 * Author : piro.tex
 */ 

///--- includes
#include <avr/io.h>
#include <avr/interrupt.h>
#include "../inc/main.h"
#include "../inc/lcd_1602.h"
#include "../inc/buttons.h"


///--- defines
#define relay_port_set DDRC
#define relay_port PORTC

#define voltage_port_set DDRD
#define voltage_port PORTD
#define voltage_pin 4


///--- enums
enum enums
{
    //-- Channels ADC
    ch_voltage                  = 6, // ADC channel 6
    ch_current                  = 7, // ADC channel 7
        
    //-- Relay pins
    relay_1                     = 0, // Relay 1
    relay_2                     = 1, // Relay 2
    relay_3                     = 2, // Relay 3
    relay_4                     = 3, // Relay 4
    relay_5                     = 4, // Relay 5
    relay_6                     = 5, // Relay 6
    
    //-- Shunt resistance
    shunt_1                     = 10000, // 10k Ohm
    shunt_2                     = 1000, // 1k Ohm
    shunt_3                     = 100, // 100 Ohm
    shunt_4                     = 10, // 10 Ohm
    shunt_5                     = 1, // 1 Ohm
    shunt_6                     = 10, // 0.1 Ohm !!!
    
    //-- Errors
    error_no                    = 0xE0, // No error
    error_max_cur               = 0xE1, // Error - max current
    error_max_vol               = 0xE2, // Error - max voltage (10V and higher)
    
    //-- Flag states
    flag_off                    = 0, // Flag reset
    flag_on                     = 1, // Flag set
};


///--- structs
typedef struct
{
    uint8_t ch; // Channel
    uint8_t flag; // Flag irq complete
    uint8_t flag_ch; // Flag channel change
    
    // Results
    uint8_t adc_l; // ADC data low byte (ADCL)
    uint8_t adc_h; // ADC data high byte (ADCH)
    uint16_t result; // Result
} adc_str; // Struct for adc

typedef struct  
{
    uint8_t relay; // Current open relay
    uint8_t error; // Error
    
} device_str;


///--- adc
void adc_init(void);
void adc_start(void); // Start ADC conversion
void adc_read(void); // Read data from ADC (data in adc->result)
ISR(ADC_vect); // Interrupt hundler


///--- relay
void relay_init(void); // Init relay pins
void relay_close_all(void); // Close all relays
void relay_switch(uint8_t relay); // Switch to specified relay
void relay_next(void); // Switch to next relay
void relay_prev(void); // Switch to prev relay


///--- tim
void tim_init(void); // Init TIM
ISR(TIMER0_COMPA_vect); // IRQ handler


///--- uart
void uart_init(void); // Init UART
ISR(USART_RX_vect); // IRQ handler


///--- functions
void voltage_init(void); // Init voltage transistor pin


///--- Variables
adc_str adc =
{
    .flag = flag_off, // Flag irq complete
    .flag_ch = flag_off, // Flag channel change
    
    // Results
    .adc_l = 0, // ADC data low byte (ADCL)
    .adc_h = 0, // ADC data high byte (ADCH)
    .result = 0 // Result
};

device_str device = 
{
    .relay = relay_1, // Current relay
    .error = error_no // Error
};

uint8_t receive = 0;

int main(void)
{   
    lcd_init(); // Init LCD 
    adc_init(); // Init ADC
    relay_init(); // Init relays
    voltage_init(); // Init voltage transistor pin
    tim_init(); // Init TIM
    uart_init(); // Init UART
    
    
    DDRB &= ~(1 << 1);
    
    //ClearBit(relay_port, relay_4);
    //relay_next();
    //relay_next();
    //relay_next();
    //relay_switch(relay_4);
    //lcd_set_cursor(0, 0);
    //lcd_print_string("Button: ");
    lcd_clear();    
    lcd_set_cursor(0, 0);
    lcd_print_string("ADC: ");
    
    lcd_set_cursor(1, 0);
    lcd_print_string("I: ");
    
    lcd_set_cursor(1, 9);
    lcd_print_string("V: ");
    
    //adc_start();
    
    SetPinOutput(DDRB, 3);
    ClearBit(PORTB, 3);
    
    
    char vivod[16] = {0};
    char vivod_adc[3] = {0};
    char vivod_vol[3] = {0};
    char vivod_cur[3] = {0};
    
    ////float vol_multi = 5.f * 1150.f / 1024.f / 150.f; // Voltage multiplier
    //float vol_multi = 0.0374f; // Voltage multiplier
    //float vol_multi = 5.f * (996.f + 149.9) / 149.9 / 1024.f; // Voltage multiplier
    float vol_multi = 0.03733f; // Voltage multiplier
    
    //float cur_multi = 5.f / 1024.f / 20.f / shunt; // Current multiplier
    //float cur_multi_1 = 24.41406f; // Current multiplier - relay 1 (nA)
    //float cur_multi_2 = 244.1406f; // Current multiplier - relay 2 (nA)
    //float cur_multi_3 = 2.441406f; // Current multiplier - relay 3 (uA)
    //float cur_multi_4 = 24.41406f; // Current multiplier - relay 4 (uA)
    //float cur_multi_5 = 244.1406f; // Current multiplier - relay 5 (uA)
    //float cur_multi_6 = 2.441406f; // Current multiplier - relay 6 (mA)
    float cur_multi_1 = 0.00002441406f; // Current multiplier - relay 1 (mA)
    float cur_multi_2 = 0.0002441406f; // Current multiplier - relay 2 (mA)
    float cur_multi_3 = 0.002441406f; // Current multiplier - relay 3 (mA)
    float cur_multi_4 = 0.02441406f; // Current multiplier - relay 4 (mA)
    float cur_multi_5 = 0.2441406f; // Current multiplier - relay 5 (mA)
    float cur_multi_6 = 2.441406f; // Current multiplier - relay 6 (mA)
        
    float voltage = 0;
    float current = 0;
    
    
    SetBit(voltage_port, voltage_pin); // Voltage off
    
    uint8_t times = 0;
    lcd_set_cursor(0, 10);
    lcd_print_symbol(0x78);
    
    while (1) 
    {
        lcd_set_cursor(0, 11);
        lcd_print_symbol(receive);
        //lcd_set_cursor(0, 8);
        //if(button_read(button_ok))
            //lcd_print_symb('1');
        //else
            //lcd_print_symb('0');
        
        //while(!(UCSR0A & (1 << UDRE0))); // Waiting data register is empty
        //UDR0 = 0x78; // Send byte
        //while (!(UCSR0A & (1 << TXC0))); // Waiting transmit is over
        //UDR0 = 0x78;
        //while (!(UCSR0A & (1 << TXC0))); // Wait transmit complete
        //UCSR0A |= (1 << TXC0); // Clear flag transmit complete
        //UCSR0B |= (1 << UDRIE0); // Разрешение прерывания по опустошению буфера UDR
        //_delay_ms(200);
        
        if(button_read(button_ok))
        {
            device.error = error_no;
            relay_switch(relay_1);
        }            
            
        adc_read();
        lcd_set_cursor(0, 14);
        lcd_print_symbol('R');
        lcd_print_symbol(0x31 + device.relay);
        if(adc.result > 800)
        {
            if(device.relay != relay_6)
            {
                relay_next();
            }               
            else
            {
                if(device.error != error_no)
                {
                    //vivod_adc[0] = 'M';
                    //vivod_adc[1] = 'a';
                    //vivod_adc[2] = 'x';
                    //strcpy(vivod_adc, "Max");
                    //vivod_adc = "Max";
                    lcd_set_cursor(0, 5);
                    lcd_print_string("Max");
                    relay_close_all();
                    device.error = error_max_cur;
                }
            }
        }
        else
        {
            if(!(ADMUX & (1 << MUX0)))
                voltage = adc.result * vol_multi;
            else
            {
                if(device.relay == relay_1)
                    current = adc.result * cur_multi_1;
                else if(device.relay == relay_2)
                    current = adc.result * cur_multi_2;
                else if(device.relay == relay_3)
                    current = adc.result * cur_multi_3;
                else if(device.relay == relay_4)
                    current = adc.result * cur_multi_4;
                else if(device.relay == relay_5)
                    current = adc.result * cur_multi_5;
                else if(device.relay == relay_6)
                    current = adc.result * cur_multi_6;
            }                
        
            times++;
            if(times < 1)
            {
                if(ADMUX & (1 << MUX0))
                    adc.flag_ch = flag_on;
            }
            else if(times < 11)
            {
                if(!(ADMUX & (1 << MUX0)))
                    adc.flag_ch = flag_on;
            }
            else
            {
                times = 0;
                lcd_clear_area(0, 5, 4); // Clear ADC value
                lcd_clear_area(1, 3, 5); // Clear current
                lcd_clear_area(1, 12, 4); // Clear voltage
            }
        
        
            lcd_set_cursor(0, 5);
            lcd_print_uint(adc.result);
        
            lcd_set_cursor(1, 3);
            lcd_print_float(current);
            lcd_print_string(vivod_cur);
        
            lcd_set_cursor(1, 12);
            lcd_print_float(voltage);
            lcd_print_string(vivod_vol);
        }

        _delay_ms(20);
    }
}


///--------------------------------------------------------------------------///
///--- adc
void adc_init(void) // Init ADC
{
    //-- Reset state ADC
    ADMUX = 0x00; // Reset register ADMUX
    ADCSRA = 0x00; // Reset register ADCSRA
    ADCSRB = 0x00; // Reset register ADCSRB
    DIDR0 = 0x00; // Reset register DIDR0
    
    
    //-- Voltage reference
    ADMUX |= (1 << REFS0); // AVcc
    
    //-- Result adjust
    ADMUX &= ~(1 << ADLAR); // Right adjust result
    
    //-- Channels
    ADMUX |= ((1 << MUX2) | (1 << MUX1)); // Channel 6
    
    //-- Prescaler
    ADCSRA |= ((1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0)); // Prescaler 128
    
    //-- Auto trigger
    ADCSRA |= (1 << ADATE); // Auto trigger enable
    ADCSRB &= ~((1 << ADTS2) | (1 << ADTS1) | (1 << ADTS0)); // Free run
    
    //-- Interrupt
    ADCSRA |= (1 << ADIE); // ADC interrupt enable
    sei(); // Global interrupts enable
    
    ADCSRA |= (1 << ADEN); // ADC enable
    
    return;
} // void adc_init(void)

void adc_start(void) // Start ADC conversion
{
    ADCSRA |= (1 << ADSC); // Start conversion
    
    return;
} // void adc_start(void)

void adc_read(void) // Read data from ADC (data in adc.result)
{
    if(adc.flag == flag_on) // If flag set
    {
        uint16_t result = 0;
        result = (adc.adc_h << 8) | adc.adc_l;
        
        adc.flag = flag_off;
        adc.result = result;
    }
    
    return;
} // void adc_read(void)


ISR(ADC_vect) // Interrupt hundler
{
    adc.flag = flag_on;
    adc.adc_l = ADCL;
    adc.adc_h = ADCH;
    
    //InvBit(ADMUX, MUX0);
    
    if(adc.flag_ch == flag_on)
    {
        if(!(ADMUX & (1 << MUX0)))
            ADMUX |= (1 << MUX0);
        else
            ADMUX &= ~(1 << MUX0);
        
        adc.flag_ch = flag_off;
    }
    
    return;
} // ISR(ADC_vect)


///--------------------------------------------------------------------------///
///--- relay
void relay_init(void) // Init relay pins
{ 
    SetPinOutput(relay_port_set, relay_1); // 10k
    SetBit(relay_port, relay_1);
    
    SetPinOutput(relay_port_set, relay_2); // 1k
    SetBit(relay_port, relay_2);
    
    SetPinOutput(relay_port_set, relay_3); // 100
    SetBit(relay_port, relay_3);
    
    SetPinOutput(relay_port_set, relay_4); // 10
    SetBit(relay_port, relay_4);
    
    SetPinOutput(relay_port_set, relay_5); // 1
    SetBit(relay_port, relay_5);
    
    SetPinOutput(relay_port_set, relay_6); // 0.1
    SetBit(relay_port, relay_6);
} // void relay_init(void)

void relay_close_all(void) // Close all relays
{
    SetBit(relay_port, relay_1);
    SetBit(relay_port, relay_2);
    SetBit(relay_port, relay_3);
    SetBit(relay_port, relay_4);
    SetBit(relay_port, relay_5);
    SetBit(relay_port, relay_6);
    
    return;
} // void relay_close_all(void)
    
void relay_switch(uint8_t relay) // Switch to specified relay
{
    SetBit(relay_port, device.relay);
    ClearBit(relay_port, relay);
    device.relay = relay;
    
    return;
} // void relay_switch(uint8_t relay)

void relay_next(void) // Switch to next relay
{
    //-- Close after last relay
    if(device.relay == relay_6)
        SetBit(relay_port, relay_6);
    else
    {
        SetBit(relay_port, device.relay++);
        ClearBit(relay_port, device.relay);
    }
    
    return;
} // void relay_next(void)

void relay_prev(void) // Switch to prev relay
{
    //-- Close after first relay
} // void relay_prev(void)


///--------------------------------------------------------------------------///
///--- tim
void tim_init(void) // Init TIM
{
    TCCR0A |= (1 << WGM01); // Timer mode - CTC
    TIMSK0 |= (1 << OCIE0A); // Output Compare Match A Interrupt Enable
    OCR0A = 0x39; // Counter up to 1ms
    OCR0B = 0x99;
    
    return;
} // void tim_init(void)

ISR(TIMER0_COMPA_vect) // IRQ handler
{
    
    
    return;
} // ISR(TIMER0_COMPA_vect)


///--------------------------------------------------------------------------///
///--- uart
void uart_init(void) // Init UART
{
    //-- Init uart to pc
    // 8 data, no parity, 1 stop bit, baud rate 115200
    uint32_t baudrate = 115200;
    
    UBRR0H = (unsigned char)((F_CPU / 16 / baudrate - 1) >> 8); // Set baudrate
    UBRR0L = (unsigned char)(F_CPU / 16 / baudrate - 1); // Set baudrate
    UCSR0B |= (1 << RXCIE0); // Interrupt to RX
    UCSR0B |= (1 << RXEN0) | (1 << TXEN0); // Start transmitter and receiver
    
    sei(); // Global interrupts enable
    
    return;
} // void uart_init(void)

ISR(USART_RX_vect) // IRQ handler
{
    //lcd_set_cursor(0, 11);
    //lcd_print_symbol(UDR0); // Print receive symbol
    SetBit(PORTB, 3);
    //uint8_t byute = UDR0;
    //UDR0 = byute;
    //while (!(UCSR0A & (1 << TXC0))); // Wait transmit complete
    //UCSR0A |= (1 << TXC0); // Clear flag transmit complete
    receive = UDR0;
    while(!(UCSR0A & (1 << UDRE0))); // Waiting data register is empty
    UDR0 = receive;
    UCSR0A &= ~(1 << RXC0); // Clear flag receive complete
	
    return;
} // ISR(USART_RX_vect)


///--------------------------------------------------------------------------///
///--- functions
void voltage_init(void) // Init voltage transistor pin
{
    SetPinOutput(voltage_port_set, voltage_pin);
    ClearBit(voltage_port, voltage_pin);
    
    return;
} // void voltage_init(void)