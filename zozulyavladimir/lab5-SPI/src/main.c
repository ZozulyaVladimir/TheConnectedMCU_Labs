/******************************************************************************/
/*  Files to Include                                                          */
/******************************************************************************/
#ifdef __XC32
    #include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>         /* For uint32_t definition                        */
#include <stdbool.h>        /* For true/false definition                      */
#include <stdio.h>
#include <math.h>
#include "user.h"           /* User funct/params, such as InitApp             */
/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/
char buff [20];
/* i.e. uint32_t <variable_name>; */

/******************************************************************************/
/* Main Program                                                               */
/******************************************************************************/

int32_t main(void)
{
    start_game = 1;
    
    InitGPIO();
    oled_init();
    initTimer2AndIC3();
    initWiFIREadc();    
    
    while(start_game);//wait for ic3 int
       
    setup();
    
    while(gameOver){
        draw();
        input();
        logic();
    }
    
    OledClear();
    OledSetCursor(0,0);
    OledPutString("Game over");
    OledSetCursor(0,1);
    OledPutString("Your score:");
    OledSetCursor(0,2);
    sprintf(buff,"%d",score);
    
    OledPutString(buff);
    
    OledUpdate();
    OledSetCursor(0,3);
    OledPutString("Press restart");
  
    while(1);//trap CPU
}
