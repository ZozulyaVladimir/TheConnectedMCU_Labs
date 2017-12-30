#include <stdint.h>
#include <stdbool.h>
#include <OLED/OLED.h>
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

#define BTN_1_LEFT          PORTEbits.RE1
#define BTN_2_UP            PORTEbits.RE2

#define VR1_AN_CHAN_NUM 8
bool gameOver;
const int32_t width = 80;
const int32_t height = 32;
int32_t x,y,fruitX,fruitY,score,nTail;
int32_t tailX[100],tailY[100];
enum eDirection {STOP = 0, UP,LEFT,DOWN,RIGHT};
bool start_game;
uint32_t rand_seed;

int32_t score;
/******************************************************************************/
/* User Function Prototypes                                                    /
/******************************************************************************/

/* TODO User level functions prototypes (i.e. InitApp) go here */

void InitApp(void);         /* I/O and Peripheral Initialization */
void DelayMs(int t);
void led_test(void);
void initTimer2AndIC3(void);
void set_leds(int32_t leds);
void OledClear(void);