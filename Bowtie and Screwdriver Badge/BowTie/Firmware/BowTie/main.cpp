/*
 * BowTie.cpp
 *
 * Created: 5/7/2019 10:49:41 PM
 * Author : compukidmike
 */ 


#define F_CPU 1000000

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/eeprom.h>
#include <avr/sleep.h>

const uint8_t LEDLOWPINS[20] = {0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,7,7,7,7};
const uint8_t LEDHIGHPINS[20] = {1,2,3,7,0,2,3,7,0,1,3,7,0,1,2,7,0,1,2,3};

#define BUTTONPIN 0
#define BUTTONPORT _SFR_IO8(0x18) //PORTB
#define IRPWRPIN 1
#define IRPWRPORT _SFR_IO8(0x18) //PORTB
#define IRPIN 2
#define IRPORT _SFR_IO8(0x18) //PORTB

#define DEBOUNCETIME 200
#define LONGPRESSTIME 2000

volatile bool LEDS[20];
volatile bool IRMODE = false;

volatile uint16_t millis = 0;
volatile uint8_t milliscounter = 0;

volatile uint16_t lastIntTime = 0;
volatile uint8_t pwmvalue = 0;

volatile uint8_t ledcounter = 0;
volatile uint8_t pwmcounter = 0;

bool IRLEDSON = false;

volatile uint8_t displayState = 0;

uint16_t lastDisplayUpdate = 0;

uint16_t buttonDebounce = 0;

uint8_t displayCounter = 0;
uint8_t chaseDelay = 100;
uint8_t ringDelay = 50;
uint8_t waveDelay = 100;

uint8_t numStates = 4;

bool lastButtonState = false;



int main(void)
{
	set_sleep_mode(SLEEP_MODE_PWR_DOWN);
	GIMSK |= (1<<PCIE1);
	PCMSK1 |= (1<<PCINT8);
	
	
	
	//PINB |= 0b0111;
	DDRB |= 1<<IRPWRPIN; //Set IR power pin to OUTPUT
	IRPWRPORT |= 1<<IRPWRPIN; //Turn on IR power
	
	PORTB |= 1<<BUTTONPIN; //Turn on Pullup
	
	 MCUCR |= 1<<ISC01; //Set INT0 to falling edge
	 GIMSK |= 1<<INT0; //Enable External Interrupt 0
	
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
	
	/*
	// 10000 Hz (1000000/((99+1)*1))
	OCR1A = 99;
	// CTC
	TCCR1B |= (1 << WGM12);
	// Prescaler 1
	TCCR1B |= (1 << CS10);
	// Output Compare Match A Interrupt Enable
	TIMSK1 |= (1 << OCIE1A);
	*/
	/*
	 // 5000 Hz (1000000/((24+1)*8))
	 OCR1A = 24;
	 // CTC
	 TCCR1B |= (1 << WGM12);
	 // Prescaler 8
	 TCCR1B |= (1 << CS11);
	 // Output Compare Match A Interrupt Enable
	 TIMSK1 |= (1 << OCIE1A);
	 */
	/*
	// 2000 Hz (1000000/((499+1)*1))
	OCR1A = 499;
	// CTC
	TCCR1B |= (1 << WGM12);
	// Prescaler 1
	TCCR1B |= (1 << CS10);
	// Output Compare Match A Interrupt Enable
	TIMSK1 |= (1 << OCIE1A);
	 */
	sei(); //enable interrupts
	
	/*while(1){
		for(int x = 0; x<20; x++){
			if(x<pwmvalue){
				LEDS[x] = true;
			} else {
				LEDS[x] = false;
			}
		}
	}*/
	
    /* Replace with your application code */
    while (1) 
    {
		if(~PINB & 0b1){
			if(lastButtonState == false){
				if(millis - buttonDebounce > DEBOUNCETIME){
					lastButtonState = true;
					buttonDebounce = millis;
					displayState += 1;
					displayCounter = 0;
					for(int x=0; x<20; x++){
						LEDS[x] = 0;
					}
					if(displayState > numStates-1){
						displayState = 0;
					}
				}
			}
		} else {
			//if(millis - buttonDebounce > DEBOUNCETIME){
				lastButtonState = false;
			//}
		}
		switch(displayState){
			case 0: //Ring
				if(millis - lastDisplayUpdate > ringDelay){
					lastDisplayUpdate = millis;
					
					if(displayCounter < 20){
						LEDS[displayCounter] = true;
					} else {
						LEDS[displayCounter - 20] = false;
					}
					displayCounter ++;
					if(displayCounter > 40){
						displayCounter = 0;
					}
				}
				break;
			case 1: //Chase
				if(millis - lastDisplayUpdate > chaseDelay){
					lastDisplayUpdate = millis;
					
					for(int x = displayCounter; x<20; x+=4){
						LEDS[x] = true;
						if(x == 0){
							LEDS[19] = false;
							} else {
							LEDS[x-1] = false;
						}
					}
					displayCounter ++;
					if(displayCounter > 3){
						displayCounter = 0;
					}
				}
				break;
			case 2: //Wave
				if(millis - lastDisplayUpdate > waveDelay){
					lastDisplayUpdate = millis;
					
					//for(int x=0; x<20; x++){
					//	LEDS[x] = 0;
					//}
					if(displayCounter == 0){
						LEDS[0] = true;
						LEDS[19] = true;
						LEDS[18] = true;
						LEDS[17] = true;
					}
					if(displayCounter == 1){
						LEDS[1] = true;
						LEDS[16] = true;
					}
					if(displayCounter == 2){
						LEDS[2] = true;
						LEDS[15] = true;
					}
					if(displayCounter == 3){
						LEDS[3] = true;
						LEDS[14] = true;
					}
					if(displayCounter == 4){
						LEDS[4] = true;
						LEDS[13] = true;
					}
					if(displayCounter == 5){
						LEDS[5] = true;
						LEDS[12] = true;
					}
					if(displayCounter == 6){
						LEDS[6] = true;
						LEDS[11] = true;
					}
					if(displayCounter == 7){
						LEDS[7] = true;
						LEDS[8] = true;
						LEDS[9] = true;
						LEDS[10] = true;
					}
					if(displayCounter == 8){
						LEDS[0] = false;
						LEDS[19] = false;
						LEDS[18] = false;
						LEDS[17] = false;
					}
					if(displayCounter == 9){
						LEDS[1] = false;
						LEDS[16] = false;
					}
					if(displayCounter == 10){
						LEDS[2] = false;
						LEDS[15] = false;
					}
					if(displayCounter == 11){
						LEDS[3] = false;
						LEDS[14] = false;
					}
					if(displayCounter == 12){
						LEDS[4] = false;
						LEDS[13] = false;
					}
					if(displayCounter == 13){
						LEDS[5] = false;
						LEDS[12] = false;
					}
					if(displayCounter == 14){
						LEDS[6] = false;
						LEDS[11] = false;
					}
					if(displayCounter == 15){
						LEDS[7] = false;
						LEDS[8] = false;
						LEDS[9] = false;
						LEDS[10] = false;
					}
					displayCounter ++;
					if(displayCounter > 15){
						displayCounter = 0;
					}
				}
				break;
			case 3: //blank;
				DDRA &= ~(0b10001111); //Set all LED pins to input
				IRPWRPORT &= ~(1<<IRPWRPIN); //Turn off IR power
				_delay_ms(500); //debounce
				sleep_enable();
				sleep_mode();
				sleep_disable();
				displayState = 0; //get out of this display state for next loop
				displayCounter = 0; //reset display counter and LED states
				for(int x=0; x<20; x++){
					LEDS[x] = 0;
				}
				IRPWRPORT |= 1<<IRPWRPIN; //Turn on IR power
				/*for(int x=0; x<20; x++){
					LEDS[x] = false;
				}
				IRPWRPORT &= ~(1<<IRPWRPIN); //Turn off IR power
				*/
				break;
			default:
				displayState = 0;
		}
				}
		/*
		for(int x = 0; x<20; x++){
			LEDS[x] = true;
			_delay_ms(50);
		}
		for(int x = 0; x<20; x++){
			LEDS[x] = false;
			_delay_ms(50);
		}
		for(int y = 0; y<5; y++){
			for(int x = 0; x<20; x+=4){
				LEDS[x] = true;
				if(x == 0){
					LEDS[19] = false;
				} else {
					LEDS[x-1] = false;
				}
			}
			_delay_ms(100);
			for(int x = 1; x<20; x+=4){
				LEDS[x] = true;
				LEDS[x-1] = false;
			}
			_delay_ms(100);
			for(int x = 2; x<20; x+=4){
				LEDS[x] = true;
				LEDS[x-1] = false;
			}
			_delay_ms(100);
			for(int x = 3; x<20; x+=4){
				LEDS[x] = true;
				LEDS[x-1] = false;
			}
			_delay_ms(100);
		}
		for(int x = 0; x<20; x++){
			LEDS[x] = false;
		}
		
    }*/
}

void updateLEDs(void)
{
	if(IRMODE == true) {
		if(millis - lastIntTime > 1000){
			IRMODE = false;
		}
		
		DDRA &= ~(0b10001111); //Set all LED pins to input
		PORTA &= ~(0b10001111); //Set all LED pins to LOW
		if(pwmcounter > pwmvalue){
			DDRA |= 1<<LEDHIGHPINS[ledcounter] | 1<<LEDLOWPINS[ledcounter];
			PORTA |= 1<<LEDHIGHPINS[ledcounter];
		}

		ledcounter ++;
		if(ledcounter > 19){
			ledcounter = 0;
			pwmcounter ++;
			if(pwmcounter > 20){
				pwmcounter = 0;
			}
		}
	} else {
		DDRA &= ~(0b10001111); //Set all LED pins to input
		PORTA &= ~(0b10001111); //Set all LED pins to LOW
		if(LEDS[ledcounter] == true){
			DDRA |= 1<<LEDHIGHPINS[ledcounter] | 1<<LEDLOWPINS[ledcounter];
			PORTA |= 1<<LEDHIGHPINS[ledcounter];
		}

		ledcounter ++;
		if(ledcounter > 19){
			ledcounter = 0;
		}
	}
}

ISR(TIM1_COMPA_vect) {
	millis += 1; //Update millisecond timer
	/*milliscounter += 1;
	if(milliscounter > 9){
		millis += 1; //Update millisecond timer
		milliscounter = 0;
	}*/
	//updateLEDs();
	if(IRMODE == true) {
		if((millis - lastIntTime) > 200){
			IRMODE = false;
		}
		for(int x=0; x<20; x++){
			DDRA &= ~(0b10001111); //Set all LED pins to input
			PORTA &= ~(0b10001111); //Set all LED pins to LOW
			if(pwmcounter > pwmvalue){
				DDRA |= 1<<LEDHIGHPINS[x] | 1<<LEDLOWPINS[x];
				PORTA |= 1<<LEDHIGHPINS[x];
			}
			_delay_us(20);
		}
		PORTA &= ~(0b10001111); //Set all LED pins to LOW
		pwmcounter ++;
		if(pwmcounter > 13){
			pwmcounter = 0;
		}
		/*ledcounter ++;
		if(ledcounter > 19){
			ledcounter = 0;
			pwmcounter ++;
			if(pwmcounter > 12){
				pwmcounter = 0;
			}
		}*/
	} else {
		DDRA &= ~(0b10001111); //Set all LED pins to input
		PORTA &= ~(0b10001111); //Set all LED pins to LOW
		if(LEDS[ledcounter] == true){
			DDRA |= 1<<LEDHIGHPINS[ledcounter] | 1<<LEDLOWPINS[ledcounter];
			PORTA |= 1<<LEDHIGHPINS[ledcounter];
		}

		ledcounter ++;
		if(ledcounter > 19){
			ledcounter = 0;
		}
	}
}

ISR(EXT_INT0_vect){
	IRMODE = true;
	if((millis - lastIntTime) > 1){
		pwmvalue = millis - lastIntTime;
		
	}
	lastIntTime = millis;
}

ISR(PCINT1_vect){
	
}
