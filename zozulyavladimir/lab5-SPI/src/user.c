/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#ifdef __XC32
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>          /* For uint32_t definition                       */
#include <stdbool.h>         /* For true/false definition                     */
#include "user.h"            /* variables/params used by user.c               */
#include <sys/attribs.h>
#include <proc/p32mz2048efg100.h>
#include "ADC.h"
enum eDirection dir;
/******************************************************************************/
/* User Functions                                                             */

/******************************************************************************/
void DelayMs(int t) {
    volatile long int count = t*33356;
    while (count--);
}

void InitGPIO(void) {
   
    ANSELGbits.ANSG6 = 0;
    ANSELBbits.ANSB11 = 0;
    ANSELGbits.ANSG15 = 0;
    
    TRISGbits.TRISG6 = 0;
    TRISBbits.TRISB11 = 0;
    TRISGbits.TRISG15 = 0;
    TRISDbits.TRISD4 = 0;
    
    TRISDbits.TRISD2 = 1;
       
    LD1_PORT_BIT = 0;
    LD2_PORT_BIT = 0;
    LD3_PORT_BIT = 0;
    LD4_PORT_BIT = 0;

    led_test();
    
    ANSELGbits.ANSG7 = 1;
    ANSELGbits.ANSG8 = 1;
}

void setup(){
    srand(rand_seed);
    OledClear();
    gameOver = 1;
    dir = STOP;
    x = width/2;
    y = height/2;
    fruitX = 2*(rand() % width/2);
    fruitY = 2*(rand() % height/2);
}

void oled_init(){
    OledHostInit();
    OledDspInit();
    OledDvrInit();
    
    OledClear();
 
    OledSetCursor(0,0);
    OledPutString("Welcome!");
    OledSetCursor(0,2);
    OledPutString("Press joystick");
}

void draw(){
    int32_t i,j,k;
    for(i = 0; i < width; i+=2){
        for(j = 0; j < height; j+=2){
            OledMoveTo(i,j);
            if(x == i && y == j){
                OledSetDrawColor(1);
                OledDrawRect(i+1,j+1);
            }
            else if(fruitX == i && fruitY == j){
                OledSetDrawColor(1);
                OledDrawRect(i+1,j+1);
            }
            else {
                bool print = false;
                 for(k = 0;k < nTail;k++){
                    if(tailX[k] == i && tailY[k] == j) {
                        print = true;
                        OledSetDrawColor(1);
                        OledDrawRect(i+1,j+1);
                        }
                    }
                if(!print){
                OledSetDrawColor(0);
                OledDrawRect(i+1,j+1);
                }
                }
            }
         OledUpdate();
    }
}

void input(){
    if((convertWiFIREadc(10) > 3276) && dir!= UP){
        dir = DOWN;
    }
    else if((convertWiFIREadc(10) < 819)&& dir!= DOWN ){
        dir = UP;
    }
    else if((convertWiFIREadc(13) > 3276)&& dir!= RIGHT){
        dir = LEFT;
    }
    else if((convertWiFIREadc(13) < 819)&& dir!= LEFT){
        dir = RIGHT;
    }
    
}

void logic(){
    int32_t prevX = tailX[0];
    int32_t prevY = tailY[0];
    int32_t prev2X,prev2Y;
    int32_t i,j;
    
    tailX[0] = x;
    tailY[0] = y;
    
    for(i = 1;i < nTail; i++){
        
        prev2X = tailX[i];
        prev2Y = tailY[i];
        
        tailX[i] = prevX;
        tailY[i] = prevY;
        
        prevX = prev2X;
        prevY = prev2Y;
        
    }
    
    switch(dir){
        case LEFT:
            x = (x < 2) ? width-2 : x - 2;
            break;
        case RIGHT:
            x = (x > width-4) ? 0 : x + 2;
            break;
        case UP:
            y = (y < 2) ? height-2 : y - 2;
            break;
        case DOWN:
            y = (y > height-4) ? 0 : y + 2;
            break;
    }
    
    for(j = 0; j < nTail; j++){
        if((tailX[j] == x) && (tailY[j] == y))//tail eaten
            gameOver = 0;
    }
    
    if((fruitX == x) && (fruitY == y)){
        fruitX = 2*(rand() % width/2);
        fruitY = 2*(rand() % height/2);
        nTail ++;
        score += 10;
    }
}

void set_leds(int32_t leds)
{
   LD1_PORT_BIT = (leds & (1 << 0)) ? 1 : 0;
   LD2_PORT_BIT = (leds & (1 << 1)) ? 1 : 0;
   LD3_PORT_BIT = (leds & (1 << 2)) ? 1 : 0;
   LD4_PORT_BIT = (leds & (1 << 3)) ? 1 : 0;
}

void led_test(void){
    int s;
    set_leds(0);
    for(s=0;s<4;s++){
        set_leds(15);
        DelayMs(50);
        set_leds(0);
        DelayMs(50);
    }
}
 
 void initTimer2AndIC3(void) {
    T2CON = 0; // clear timer settings to defaults  
    T2CONbits.TCKPS = 7; // divide clock by 256 with prescaler
    T2CONbits.T32 = 1;
    
    TMR2 = 0;
  
    PR2 = 39062;
    T2CONbits.SIDL = 0;
    T2CONbits.ON = 1;
    
    IC3R = 0;
    // Configure IC3 control register
    IC3CONbits.C32 = 0;    // 16 bit mode
    IC3CONbits.ICTMR = 1; // Select timer 2
    IC3CONbits.ICM = 2;
    IC3CONbits.ICI = 0;
    IC3CONbits.SIDL = 0;
    
    IC3CONbits.ON = 1;
    
    IPC4bits.IC3IP = 2;
    IPC4bits.IC3IS = 1;
    IFS0bits.IC3IF = 0;
    IEC0bits.IC3IE = 1;
    
    IPC2bits.T2IP = 2;
    IPC2bits.T2IS = 1;
    IFS0bits.T2IF = 0;
    IEC0bits.T2IE = 1;

    INTCONSET = _INTCON_MVEC_MASK;
    
    __builtin_enable_interrupts();
}
  
 void __ISR(_INPUT_CAPTURE_3_VECTOR,IPL2SRS) Capture3(void){
  
     if(IC3CONbits.ICBNE){
        T2CONbits.ON = 0;//stop timer
        start_game = 0;
        IEC0bits.IC3IE = 0;
        rand_seed = IC3BUF;
        IC3CONbits.ON = 0;
     }else 
     {
         int temp_buf = IC3BUF;
     }
    
    IFS0bits.IC3IF = 0;
}

void OledClear(void){
  
    OledMoveTo(0,0);
    OledSetFillPattern(OledGetStdPattern(0));
    OledFillRect(127,31);
    OledUpdate();
    
}

 

