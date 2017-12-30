// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#include <stdint.h>          /* For uint32_t definition                       */
#include <sys/attribs.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

#include "user.h"            /* variables/params used by user.c               */
#include "OLED.h"
#include "OledChar.h"
#include "OledGrph.h"
#include "UART.h"
enum eDirection dir;
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

/******************************************************************************/
/* User Functions                                                             */

/******************************************************************************/

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

void InitApp(void) {
   // Initialize peripherals
    InitGPIO();
    oled_init();
    initTimer2AndIC3();
    initWiFIREadc();
    InitTimer3();
}
unsigned time;
void Task1(void * pvParameters) {
    char buff[20];
    while(1){
       
        
        input();
        time = logic();
        xSemaphoreTake(xMutexOLED, portMAX_DELAY);
         if(gameOver){
                        OledClear();
            OledSetCursor(0,0);
            OledPutString("Game over");
            OledSetCursor(0,1);
            OledPutString("Your score:");
            OledSetCursor(0,2);
            sprintf(buff,"%d",score);
            OledPutString(buff);
            OledSetCursor(0,3);
            OledPutString("Press restart");
            while(1);
        } 
        draw();
        xSemaphoreGive(xMutexOLED);
        vTaskDelay(5);
    }
}

void Task2(void * pvParameters) {
    int n=0; 
    volatile char buffr[20];
   
    while (1) {
    
        xSemaphoreTake(xMutexOLED, portMAX_DELAY);
        if(gameOver){

            while(1);
        }
        
        sprintf(buffr,"%d",time);
        OledSetCursor(10,0);
        OledPutString("Time:");
        OledSetCursor(10,1);
        OledPutString(buffr);
        // TODO: Give mutex here
        xSemaphoreGive(xMutexOLED);
        //vTaskDelay(5);
        //xSemaphoreTake(xSemTrigger, portMAX_DELAY);
        //vTaskDelay(10);
        
    }
}

// TODO: Define function ClockTask here
//void ClockTask(void * pvParameters) {
//    int h=240, m=59, s=59;
//    char buff[16];
//    TickType_t xLastWakeTime;
//   
//    strcat(buff, "\r\n"); // append CR/LF
//    UART4_RTOS_qputs(buff);
//    
//     // Initialise the xLastWakeTime variable with the current time.
//     xLastWakeTime = xTaskGetTickCount();    
//    while (1) {
//        s--;
//        if (s==0) {
//            m--;
//            s=59;
//            if (m==0) {
//                h--;
//                m=59;
//            }
//        }
//         if ((s >= 5) && (s <= 15)) {
//        xSemaphoreGive(xSemTrigger);
//        }
//       
//        sprintf(buff, "%2u:%02u:%02u", h, m, s);
//        xSemaphoreTake(xMutexOLED, portMAX_DELAY);
//        OledSetCursor(0,3);
//        OledPutString(buff);
//        xSemaphoreGive(xMutexOLED);
//        vTaskDelayUntil(&xLastWakeTime, configTICK_RATE_HZ);
//    }
//}

// TODO: Define SerialInTask here

//void SerialInTask(void * pvParameters) {
//    // Display incoming characters on row 0 of OLED
//    char c = '\0';
//    int x = 0, y = 0; // starting character location
//
//    IEC5bits.U4RXIE = 1; // Enable receive interrupt
//    
//    while (1) {
//        xQueueReceive(xQueueSerIn, &c, portMAX_DELAY);
//        xSemaphoreTake(xMutexOLED, portMAX_DELAY);
//        OledSetCursor(x, y);
//        OledPutChar(c);
//
//        if (x == 0) { // At beginning of line again?
//            OledPutString("               "); // erase rest of line
//        }
//        xSemaphoreGive(xMutexOLED);
//
//        x++;
//        if (x > 15)
//            x = 0;
//    }
//}


void DelayMs(int t) {
    volatile long int count = t*33356;
    
    while (count--)
        ;
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

unsigned logic(){
    int32_t prevX = tailX[0];
    int32_t prevY = tailY[0];
    int32_t prev2X,prev2Y;
    int32_t i,j;
    unsigned t;
    
    TMR3 = 0;
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
            gameOver = 1;
    }
    
    if((fruitX == x) && (fruitY == y)){
        fruitX = 2*(rand() % width/2);
        fruitY = 2*(rand() % height/2);
        nTail ++;
        score += 1;
    }
    t = TMR3;
    return t;
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
    
    PRECONbits.PREFEN = 3; 
    PRECONbits.PFMWS = 2;
        
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
 
 void setup(){
    srand(rand_seed);
    OledClear();
    gameOver = 0;
    dir = UP;
    x = width/2;
    y = height/2;
    fruitX = 2*(rand() % width/2);
    fruitY = 2*(rand() % height/2);
    
    INTCONCLR = _INTCON_MVEC_MASK;
    
    __builtin_disable_interrupts();
}
 
 void InitTimer3(void) {
    T3CON = 0; // clear timer settings to defaults
    T3CONbits.TCKPS = 1; // prescale 100 MHz clock by factor of 2
    TMR3 = 0; // clear timer
    T3CONbits.ON = 1; // Start Timer 2
    // No interrupts needed.
}