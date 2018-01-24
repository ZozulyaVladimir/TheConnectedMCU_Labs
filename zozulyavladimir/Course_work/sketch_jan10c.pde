/************************************************************************/
/*                                                                      */
/*        TCPEchoClient                                                 */
/*                                                                      */
/*        A chipKIT DEIPcK TCP Client application to                    */
/*        demonstrate how to use the TcpClient Class.                   */
/*        This can be used in conjuction  with TCPEchoServer            */                
/*                                                                      */
/************************************************************************/
/*        Author:         Keith Vogel                                   */
/*        Copyright 2014, Digilent Inc.                                 */
/************************************************************************/
/* 
*
* Copyright (c) 2013-2014, Digilent <www.digilentinc.com>
* Contact Digilent for the latest version.
*
* This program is free software; distributed under the terms of 
* BSD 3-clause license ("Revised BSD License", "New BSD License", or "Modified BSD License")
*
* Redistribution and use in source and binary forms, with or without modification,
* are permitted provided that the following conditions are met:
*
* 1.    Redistributions of source code must retain the above copyright notice, this
*        list of conditions and the following disclaimer.
* 2.    Redistributions in binary form must reproduce the above copyright notice,
*        this list of conditions and the following disclaimer in the documentation
*        and/or other materials provided with the distribution.
* 3.    Neither the name(s) of the above-listed copyright holder(s) nor the names
*        of its contributors may be used to endorse or promote products derived
*        from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
* ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
* WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
* IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
* INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
* BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
* DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
* LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
* OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
* OF THE POSSIBILITY OF SUCH DAMAGE.
*/
/************************************************************************/
/*                                                                      */
/*                                                                      */
/************************************************************************/
/*  Revision History:                                                   */
/*                                                                      */
/*    5/14/2014(KeithV): Created                                       */
/*                                                                      */
/************************************************************************/

/************************************************************************/
/*                       Supported hardware:                            */
/*                                                                      */
/*  uC32 with a WiFiShield                                              */
/*  WF32                                                                */
/*  WiFIRE                                                              */
/*                                                                      */
/************************************************************************/

//******************************************************************************************
//******************************************************************************************
//***************************** SET YOUR CONFIGURATION *************************************
//******************************************************************************************
//******************************************************************************************

/************************************************************************/
/*                                                                      */
/*              Include ONLY 1 hardware library that matches            */
/*              the network hardware you are using                      */
/*                                                                      */
/*              Refer to the hardware library header file               */
/*              for supported boards and hardware configurations        */
/*                                                                      */
/************************************************************************/
#include <MRF24G.h>                     // This is for the MRF24WGxx on a pmodWiFi or WiFiShield

/************************************************************************/
/*                    Required libraries, Do NOT comment out            */
/************************************************************************/
#include <DEIPcK.h>
#include <DEWFcK.h>
#include <SPI.h>
#define ARDUINOJSON_ENABLE_PROGMEM 0
#include <ArduinoJson.h>
#include <LiquidCrystal.h>

LiquidCrystal display(41,40,39,38,37,36);
/************************************************************************/
/*                                                                      */
/*              SET THESE VALUES FOR YOUR NETWORK                       */
/*                                                                      */
/************************************************************************/


char * szIPServer = "176.9.107.169";    //server to connect to
uint16_t portServer = 80;

// Specify the SSID
const char * szSsid = "Redmik";

// select 1 for the security you want, or none for no security
#define USE_WPA2_PASSPHRASE
//#define USE_WPA2_KEY
//#define USE_WEP40
//#define USE_WEP104
//#define USE_WF_CONFIG_H

// modify the security key to what you have.
#if defined(USE_WPA2_PASSPHRASE)

const char * szPassPhrase = "12345678";
#define WiFiConnectMacro() deIPcK.wfConnect(szSsid, szPassPhrase, &status)

#elif defined(USE_WPA2_KEY)

    WPA2KEY key = { 0x27, 0x2C, 0x89, 0xCC, 0xE9, 0x56, 0x31, 0x1E, 
                    0x3B, 0xAD, 0x79, 0xF7, 0x1D, 0xC4, 0xB9, 0x05, 
                    0x7A, 0x34, 0x4C, 0x3E, 0xB5, 0xFA, 0x38, 0xC2, 
                    0x0F, 0x0A, 0xB0, 0x90, 0xDC, 0x62, 0xAD, 0x58 };
    #define WiFiConnectMacro() deIPcK.wfConnect(szSsid, key, &status)

#elif defined(USE_WEP40)

    const int iWEPKey = 0;
    WEP40KEY keySet = { 0xBE, 0xC9, 0x58, 0x06, 0x97,     // Key 0
                        0x00, 0x00, 0x00, 0x00, 0x00,     // Key 1
                        0x00, 0x00, 0x00, 0x00, 0x00,     // Key 2
                        0x00, 0x00, 0x00, 0x00, 0x00 };   // Key 3
    #define WiFiConnectMacro() deIPcK.wfConnect(szSsid, keySet, iWEPKey, &status)

#elif defined(USE_WEP104)

    const int iWEPKey = 0;
    WEP104KEY keySet = { 0x3E, 0xCD, 0x30, 0xB2, 0x55, 0x2D, 0x3C, 0x50, 0x52, 0x71, 0xE8, 0x83, 0x91,   // Key 0
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,   // Key 1
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,   // Key 2
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }; // Key 3
    #define WiFiConnectMacro() deIPcK.wfConnect(szSsid, keySet, iWEPKey, &status)

#elif defined(USE_WF_CONFIG_H)

    #define WiFiConnectMacro() deIPcK.wfConnect(0, &status)

#else   // no security - OPEN

    #define WiFiConnectMacro() deIPcK.wfConnect(szSsid, &status)

#endif
   
//******************************************************************************************
//******************************************************************************************
//***************************** END OF CONFIGURATION ***************************************
//******************************************************************************************
//******************************************************************************************

typedef enum
{
    NONE = 0,
    CONNECT,
    TCPCONNECT,
    WRITE,
    READ,
    CLOSE,
    DONE,
} STATE;

STATE state = CONNECT;

unsigned tStart = 0;
unsigned tWait = 30000;

TCPSocket tcpSocket;
byte rgbRead[1024];

byte rgbWriteStream[] = "GET /timezoneJSON?formatted=true&lat=50.27&lng=30.31&username=fnolejr&style=full\n";
int cbWriteStream = sizeof(rgbWriteStream);

const char *sunrise;
const char *sunset;
const char *time;

/***        void setup()
 *
 *        Parameters:
 *          None
 *              
 *        Return Values:
 *          None
 *
 *        Description: 
 *        
 *      Arduino setup function.
 *      
 *      Initialize the Serial Monitor, and initializes the
 *      connection to the TCPEchoServer
 *      Use DHCP to get the IP, mask, and gateway
 *      by default we connect to port 44300
 *      
 * ------------------------------------------------------------ */
void setup()
{
    pinMode(35,INPUT_PULLDOWN);

    display.begin(20,4);
    display.clear();
    display.setCursor(0,0);
    display.clear();
    display.print("Time in Paris");
    display.display();
    delay(500);
    
}

/***        void loop()
 *
 *        Parameters:
 *          None
 *              
 *        Return Values:
 *          None
 *
 *        Description: 
 *        
 *      Arduino loop function.
 *      
 *      We are using the default timeout values for the DEIPcK and TcpClient class
 *      which usually is enough time for the Tcp functions to complete on their first call.
 *
 *      This code will write  some stings to the server and have the server echo it back
 *      
 * ------------------------------------------------------------ */
void request() {
    IPSTATUS status;
    int cbRead = 0;

    switch(state)
    {

        case CONNECT:
            if(WiFiConnectMacro())
            
            {
                display.setCursor(0,0);
                display.clear();
                display.print("Connected to ");
                display.print(szSsid);
                display.display();
                delay(2000);
                deIPcK.begin();
                state = TCPCONNECT;
            }
            else if(IsIPStatusAnError(status))
            {
                //Serial.print("Unable to connection, status: ");
                //Serial.print(status, DEC);
                display.setCursor(0,0);
                display.clear();
                display.print("Unable to connection status: ");
                display.setCursor(0,3);
                display.print(status, DEC);
                display.display();
                delay(500);
                state = CLOSE;
            }
            break;

        case TCPCONNECT:
            if(deIPcK.tcpConnect(szIPServer, portServer, tcpSocket))
            {
                display.setCursor(0,0);
                display.clear();
                display.print("Getting time from server");
                delay(500);
                display.display();
                state = WRITE;
            }
        break;

        // write out the strings
        case WRITE:
            if(tcpSocket.isEstablished())
            {     
                tcpSocket.writeStream(rgbWriteStream, cbWriteStream);
                state = READ;
                tStart = (unsigned) millis();
            }
            break;


            // look for the echo back
        case READ:
            // see if we got anything to read
            if((cbRead = tcpSocket.available()) > 0)
            {
                cbRead = cbRead < (int) sizeof(rgbRead) ? cbRead : sizeof(rgbRead);
                cbRead = tcpSocket.readStream(rgbRead, cbRead);
  
                json_parse();
                print_time_lcd();
            }

            // give us some time to get everything echo'ed back
            else if( (((unsigned) millis()) - tStart) > tWait )
            {
                state = CLOSE;
            }
            break;

        // done, so close up the tcpSocket
        case CLOSE:
            tcpSocket.close();
            state = TCPCONNECT;
            break;

        case DONE:
                
        default:
            break;
    }

    // keep the stack alive each pass through the loop()
    DEIPcK::periodicTasks();
}

void loop(){
    if(digitalRead(35)){
       request(); 
    }
}

void print_time_lcd(void) {

    display.setCursor(0,0);
    display.clear();
    display.print("sunrise: ");
    display.setCursor(0,1);
    display.print(sunrise);
     delay(2000);
     
    display.setCursor(0,0);
    display.clear();
    display.print("sunset: ");
    display.setCursor(0,1);
    display.print(sunset);
     delay(2000);
    
    display.setCursor(0,0);
    display.clear();
    display.print("time: ");
    display.setCursor(0,1);
    display.print(time);
     delay(2000);

}

void json_parse() {
    StaticJsonBuffer<1200> jsonBuffer;
    JsonObject& root = jsonBuffer.parseObject((char*)rgbRead);
  
    if (!root.success()) {
          display.setCursor(0,0);
          display.clear();
          display.print("Eror in json. Check response.");  
          delay(2000);
      return;
    }
    sunrise = root["sunrise"];
    sunset = root["sunset"];
    time = root["time"];
}

