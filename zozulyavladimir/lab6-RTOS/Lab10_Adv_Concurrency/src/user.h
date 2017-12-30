#ifndef USER_H
#define USER_H

#include "FreeRTOS.h"
#include "semphr.h"
#include <stdbool.h>

/******************************************************************************/
/* User Level #define Macros                                                  */
/******************************************************************************/

// Add I/O name macros here
#define LD1_PORT_BIT        LATGbits.LATG6
#define LD2_PORT_BIT        LATDbits.LATD4
#define LD3_PORT_BIT        LATBbits.LATB11
#define LD4_PORT_BIT        LATGbits.LATG15

#define BTN1_PORT_BIT       PORTAbits.RA5
#define BTN2_PORT_BIT       PORTAbits.RA4

// Basic I/O Shield 
#define BIOS_LD1_PORT_BIT        LATEbits.LATE0
#define BIOS_LD2_PORT_BIT        LATEbits.LATE1
#define BIOS_LD3_PORT_BIT        LATEbits.LATE2
#define BIOS_LD4_PORT_BIT        LATEbits.LATE3
#define BIOS_LD5_PORT_BIT        LATEbits.LATE4
#define BIOS_LD6_PORT_BIT        LATEbits.LATE5
#define BIOS_LD7_PORT_BIT        LATEbits.LATE6
#define BIOS_LD8_PORT_BIT        LATEbits.LATE7

#define BIOS_BTN1_PORT_BIT       PORTGbits.RG7
#define BIOS_BTN2_PORT_BIT       PORTDbits.RD5
#define BIOS_BTN3_PORT_BIT       PORTFbits.RF1
#define BIOS_BTN4_PORT_BIT       PORTAbits.RA2


/******************************************************************************/
/* User Function Prototypes                                                   */
/******************************************************************************/
void InitApp(void);         /* I/O and Peripheral Initialization */

void Task1 ( void * pvParameters);
void Task2 ( void * pvParameters);

void DelayMs(int t);

void ClockTask ( void * pvParameters);
void InitTimer3();
void led_test(void);
void set_leds(int32_t leds);

void draw();
unsigned logic();
void input();
void setup();

void initTimer2AndIC3(void);
void oled_init();
void OledClear(void);

#define VR1_AN_CHAN_NUM 8

volatile int32_t gameOver = 0;
const int32_t width = 80;
const int32_t height = 32;
int32_t x,y,fruitX,fruitY,score,nTail;
int32_t tailX[100],tailY[100];
enum eDirection {STOP = 0, UP,LEFT,DOWN,RIGHT};
bool start_game;
uint32_t rand_seed;

int32_t score;

SemaphoreHandle_t xMutexOLED;
//SemaphoreHandle_t xSemTrigger;

#endif // USER_H