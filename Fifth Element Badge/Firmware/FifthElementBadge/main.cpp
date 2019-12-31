/*
 * FifthElementBadge.cpp
 *
 * Created: 5/2/2019 9:21:41 PM
 * Author : compukidmike
 */ 

#define F_CPU 1000000

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/eeprom.h>

#define LEDRED1HIGHPIN 0
#define LEDRED1LOWPIN 1
#define LEDRED2HIGHPIN 1
#define LEDRED2LOWPIN 0
#define LEDGRN1HIGHPIN 1
#define LEDGRN1LOWPIN 2
#define LEDGRN2HIGHPIN 2
#define LEDGRN2LOWPIN 1
#define LEDYEL1HIGHPIN 2
#define LEDYEL1LOWPIN 0
#define LEDYEL2HIGHPIN 0
#define LEDYEL2LOWPIN 2
#define LEDBLUE1HIGHPIN 3
#define LEDBLUE2LOWPIN 3

#define DEBOUNCETIME 200

#define DISPLAYTIME 100

#define NUMMODES 2

volatile bool LEDRED1 = false;
volatile bool LEDRED2 = false;
volatile bool LEDGRN1 = false;
volatile bool LEDGRN2 = false;
volatile bool LEDYEL1 = false;
volatile bool LEDYEL2 = false;
volatile bool LEDBLUE1 = false;
volatile bool LEDBLUE2 = false;
volatile bool LEDWHT1 = false;
volatile bool LEDWHT2 = false;
volatile bool LEDWHT3 = false;

volatile uint32_t millis = 0;

uint32_t lastPressedTime = 0;

uint32_t nextDisplayTime = 0;


bool buttonPressed = false;

bool fire = false;
bool water = false;
bool wind = false;
bool earth = false;

uint8_t mode = 1;

uint8_t displaycounter = 0;
uint8_t displaycountermax = 5;

uint8_t ledcounter = 0;

uint16_t adc_read(uint8_t ch);

void StoneCheck(void);
void updateLEDs(void);

int main(void)
{
	mode = eeprom_read_byte(0);
	
	PINB |= 0b0111;
	DDRB |= 1<<0 | 1<<1 | 1<<2; //Set Center LED pins to OUTPUT
	
	PORTA |= 0b11110000;
	
	//Setup Timer 1 for 1KHz
	// Clear registers
	TCCR1A = 0;
	TCCR1B = 0;
	TCNT1 = 0;

	// 1000 Hz (1000000/((124+1)*8))
	OCR1A = 124;
	// CTC
	TCCR1B |= (1 << WGM12);
	// Prescaler 8
	TCCR1B |= (1 << CS11);
	// Output Compare Match A Interrupt Enable
	TIMSK1 |= (1 << OCIE1A);
	
	sei(); //enable interrupts
	
	ADCSRA |= (1 << ADPS1) | (1 << ADPS0); //set prescaler to 8 (1MHz/8 = 125KHz)
	ADCSRA |= (1 << ADEN); //enable ADC
	
	
    /* Replace with your application code */
    while (1) 
    {
		StoneCheck();
		
		switch(mode){
			case 1: //Bling
				if(millis >= nextDisplayTime){
					nextDisplayTime += DISPLAYTIME;
					displaycounter ++;
					if(displaycounter > displaycountermax){
						displaycounter = 0;
					}
					switch(displaycounter){
						case 0:
							LEDBLUE1 = true;
							LEDRED1 = true;
							LEDGRN1 = true;
							LEDYEL1 = true;
							break;
						case 1:
							LEDBLUE2 = true;
							LEDYEL2 = true;
							LEDGRN2 = true;
							LEDRED2 = true;
							break;
						case 2:
							
							LEDWHT1 = true;
							LEDWHT2 = true;
							LEDWHT3 = true;
							break;
						case 3:
							LEDBLUE1 = false;
							LEDRED1 = false;
							LEDGRN1 = false;
							LEDYEL1 = false;
							
							break;
						case 4:
							LEDBLUE2 = false;
							LEDYEL2 = false;
							LEDGRN2 = false;
							LEDRED2 = false;
							
							break;
						case 5:
							LEDWHT1 = false;
							LEDWHT2 = false;
							LEDWHT3 = false;
							break;
							
					}
				}
				break;
			case 2: //Movie
				LEDBLUE1 = water;
				LEDRED1 = fire;
				LEDYEL1 = wind;
				LEDGRN1 = earth;
				
				if(fire == true && water == true && earth == true && wind == true){
					//PORTB &= ~(0b0111);
					LEDWHT1 = true;
					LEDWHT2 = true;
					LEDWHT3 = true;
					LEDBLUE2 = true;
					LEDYEL2 = true;
					LEDGRN2 = true;
					LEDRED2 = true;
				} else {
					//PORTB |= 0b0111;
					LEDWHT1 = false;
					LEDWHT2 = false;
					LEDWHT3 = false;
					LEDBLUE2 = false;
					LEDYEL2 = false;
					LEDGRN2 = false;
					LEDRED2 = false;
				}
				break;
			default:
				mode = 1;
		}
		
		if(LEDWHT1 == false){
			PORTB |= 0b0001;
		} else {
			PORTB &= ~(0b0001);
		}
		if(LEDWHT2 == false){
			PORTB |= 0b0010;
			} else {
			PORTB &= ~(0b0010);
		}
		if(LEDWHT3 == false){
			PORTB |= 0b0100;
			} else {
			PORTB &= ~(0b0100);
		}
		
		/*
		if(LEDRED1 == true && LEDGRN1 == true && LEDBLUE1 == true && LEDYEL1 == true){
			PORTB &= ~(0b0111);
			LEDBLUE2 = true;
			LEDYEL2 = true;
			LEDGRN2 = true;
			LEDRED2 = true;
		} else {
			PORTB |= 0b0111;
			LEDBLUE2 = false;
			LEDYEL2 = false;
			LEDGRN2 = false;
			LEDRED2 = false;
		}*/
		
		//_delay_ms(500);
		/*LEDRED1 = false;
		LEDGRN1 = false;
		LEDYEL1 = false;
		LEDBLUE1 = false;
		LEDRED2 = false;
		LEDGRN2 = false;
		LEDYEL2 = false;
		LEDBLUE2 = false;
		PORTB &= ~(0b0111);
		_delay_ms(500);
		PORTB |= 0b0111;
		//_delay_ms(500);
		for(int x = 0; x<4; x++){
			LEDRED2 = false;
			LEDGRN2 = false;
			LEDYEL2 = false;
			LEDBLUE2 = false;
			LEDRED1 = true;
			LEDGRN1 = true;
			LEDYEL1 = true;
			LEDBLUE1 = true;
			_delay_ms(100);
			LEDRED1 = false;
			LEDGRN1 = false;
			LEDYEL1 = false;
			LEDBLUE1 = false;
			LEDRED2 = true;
			LEDGRN2 = true;
			LEDYEL2 = true;
			LEDBLUE2 = true;
			_delay_ms(100);
			LEDRED1 = false;
			LEDGRN1 = false;
			LEDYEL1 = false;
			LEDBLUE1 = false;
			LEDRED2 = false;
			LEDGRN2 = false;
			LEDYEL2 = false;
			LEDBLUE2 = false;
			_delay_ms(100);
		}*/
    }
}

void StoneCheck(void){
	//ADC4 = Water - Blue
	//ADC5 = Wind - Yellow
	//ADC6 = Earth - Green
	//ADC7 = Fire - Red
	uint16_t analogValue = adc_read(4);
	if(analogValue > 550 && analogValue < 700){
		water = true;
		} else {
		water = false;
	}
	analogValue = adc_read(5);
	if(analogValue > 125 && analogValue < 275){
		wind = true;
		} else {
		wind = false;
	}
	analogValue = adc_read(6);
	if((analogValue > 325) && (analogValue < 475)){
		earth = true;
		} else {
		earth = false;
	}
	analogValue = adc_read(7);
	if(analogValue > 750 && analogValue < 900){
		fire = true;
		} else {
		fire = false;
	}
	if(analogValue < 125){
		_delay_ms(50);
		analogValue = adc_read(7);
		if(analogValue < 125){
		if(buttonPressed == false){
			if(millis - lastPressedTime > DEBOUNCETIME){
				buttonPressed = true;
				lastPressedTime = millis;
				mode ++;
				if(mode > NUMMODES){
					mode = 1;
				}
				displaycounter = 0;
				nextDisplayTime = millis;
				eeprom_write_byte(0,mode);
				LEDBLUE1 = false;
				LEDYEL1 = false;
				LEDGRN1 = false;
				LEDRED1 = false;
				LEDBLUE2 = false;
				LEDYEL2 = false;
				LEDGRN2 = false;
				LEDRED2 = false;
				LEDWHT1 = false;
				LEDWHT2 = false;
				LEDWHT3 = false;
			}
		}
		}
	} else {
		buttonPressed = false;
	}
}

void updateLEDs(void)
{
	millis ++; //millisecond counter
	DDRA &= ~(0b1111); //Set all LED pins to input
	PORTA &= ~(0b1111); //Set all LED pins to LOW
	switch(ledcounter){
		case 0: //LED RED 1
			if(LEDRED1 == true){
			DDRA |= 1<<LEDRED1HIGHPIN | 1<<LEDRED1LOWPIN;
			PORTA |= 1<<LEDRED1HIGHPIN;
			}
			break;
		case 1: //LED RED 2
			if(LEDRED2 == true){
			DDRA |= 1<<LEDRED2HIGHPIN | 1<<LEDRED2LOWPIN;
			PORTA |= 1<<LEDRED2HIGHPIN;
			}
			break;
		case 2: //LED GRN 1
			if(LEDGRN1 == true){
			DDRA |= 1<<LEDGRN1HIGHPIN | 1<<LEDGRN1LOWPIN;
			PORTA |= 1<<LEDGRN1HIGHPIN;
			}
			break;
		case 3: //LED GRN 2
			if(LEDGRN2 == true){
			DDRA |= 1<<LEDGRN2HIGHPIN | 1<<LEDGRN2LOWPIN;
			PORTA |= 1<<LEDGRN2HIGHPIN;
			}
			break;
		case 4: //LED YEL 1
			if(LEDYEL1 == true){
			DDRA |= 1<<LEDYEL1HIGHPIN | 1<<LEDYEL1LOWPIN;
			PORTA |= 1<<LEDYEL1HIGHPIN;
			}
			break;
		case 5: //LED YEL 2
			if(LEDYEL2 == true){
			DDRA |= 1<<LEDYEL2HIGHPIN | 1<<LEDYEL2LOWPIN;
			PORTA |= 1<<LEDYEL2HIGHPIN;
			}
			break;
		case 6: //LED BLUE 1
			if(LEDBLUE1 == true){
			PORTA |= 1<<LEDBLUE1HIGHPIN;
			DDRA |= 1<<LEDBLUE1HIGHPIN;
			}
			break;
		case 7: //LED BLUE 2
			if(LEDBLUE2 == true){
			PORTA &= ~(1<<LEDBLUE2LOWPIN);
			DDRA |= 1<<LEDBLUE1HIGHPIN;
			}
			break;
		case 8: //Reset Counter
			ledcounter = 255;
			break;
		default:
			ledcounter = 0; //Just in case
	}
	ledcounter ++;
}

ISR(TIM1_COMPA_vect) {
	updateLEDs();
}

uint16_t adc_read(uint8_t ch)
{
	// select the corresponding channel 0~7
	// ANDing with ’7? will always keep the value
	// of ‘ch’ between 0 and 7
	ch &= 0b00000111;  // AND operation with 7
	ADMUX = (ADMUX & 0xF8)|ch; // clears the bottom 3 bits before ORing
	
	// start single conversion
	// write ’1? to ADSC
	ADCSRA |= (1<<ADSC);
	
	// wait for conversion to complete
	// ADSC becomes ’0? again
	// till then, run loop continuously
	while(ADCSRA & (1<<ADSC));
	
	return (ADC);
}