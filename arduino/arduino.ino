
/*
This sketch demonstrates recording of standard WAV files that can be played on any device that supports WAVs. The recording
uses a single ended input from any of the analog input pins. Uses AVCC (5V) reference currently.

Requirements:
Class 4 or 6 SD Card
Audio Input Device (Microphone, etc)
Arduino Uno,Nano, Mega, etc.

Steps:
1. Edit pcmConfig.h
    a: On Uno or non-mega boards, #define buffSize 128. May need to increase.
    b: Uncomment #define ENABLE_RECORDING and #define BLOCK_COUNT 10000UL

2. Usage is as below. See https://github.com/TMRh20/TMRpcm/wiki/Advanced-Features#wiki-recording-audio for
   additional informaiton.

Notes: Recording will not work in Multi Mode.
Performance is very dependant on SD write speed, and memory used.
Better performance may be seen using the SdFat library. See included example for usage.
Running the Arduino from a battery or filtered power supply will reduce noise.
*/
#include <stdio.h>
#include <string.h>

#include <SdFat.h>
#include <SPI.h>
#include <TMRpcm.h>

//Uncomment this, the include above and in pcmConfig.h if using SdFat library
SdFat SD;
SdFile file;

#define SD_ChipSelectPin 10  //example uses hardware SS pin 53 on Mega2560
//#define SD_ChipSelectPin 4  //using digital pin 4 on arduino nano 328, can use other pins

TMRpcm audio;   // create an object for use in this sketch 

int buttonPin = 7;
bool isRecording = false;

int fileNumber = 1;
char currentFilename[17];

void setup() {
  
  audio.speakerPin = 11; //5,6,11 or 46 on Mega, 9 on Uno, Nano, etc
  pinMode(12,OUTPUT);  //Pin pairs: 9,10 Mega: 5-2,6-7,11-12,46-45
  
  Serial.begin(115200);
  
  if (!SD.begin(SD_ChipSelectPin)) {  
    Serial.println("SD NOT OK"); 
    return;
  }else{
    Serial.println("SD OK"); 
  }
  // The audio library needs to know which CS pin to use for recording
  audio.CSPin = SD_ChipSelectPin;

  pinMode (buttonPin, INPUT);

  int value=digitalRead(buttonPin);//0 == press
  //wait for btn initialisation
  while(value != 1){
    value=digitalRead(buttonPin);
  }
  Serial.println("Button initialised");
}


void loop() {
   /* if(Serial.available()){                          //Send commands over serial to play
      switch(Serial.read()){
        case 'r': audio.startRecording("test.wav",16000,A0); Serial.println("Start Recording"); break;    //Record at 16khz sample rate on pin A0
        case 'R': audio.startRecording("test.wav",16000,A0,1); break;  //Record, but with passthrough to speaker.
        case 't': audio.startRecording("test.wav",16000,A0,2); break;  //Do not record. Output direct to speaker
        							       //Note: If samples are dropped before writing, it
        							       //      will not be heard in passthrough mode
        case 's': audio.stopRecording("test.wav"); Serial.println("Stop Recording"); break;              //Stop recording
        case 'p': audio.play("test.wav"); break;                       //Play the recording 
        case '=': audio.volume(1); break;                              //Increase volume by 1. Does not affect recording
        case '-': audio.volume(0); break;                              //Decrease volume by 1. Does not affect recording
        case 'S': audio.stopPlayback(); break;                         //Stop all playback
        default: Serial.println("Wrong character"); break;
      }
    } else {
      Serial.println("Not available");
    }*/

    int value=digitalRead(buttonPin);//0 == press

    if(value==0){
      if(!isRecording){
        Serial.println("Start recording");
        //digitalWrite(YELLOW,HIGH);
        sprintf(currentFilename,"recording_%d.wav",fileNumber);
        audio.startRecording(currentFilename,16000,A0);
        isRecording = true;
        fileNumber++;
      }
    } else {
      if(isRecording){
        Serial.println("Stop recording");
        audio.stopRecording(currentFilename); 
        isRecording = false;

        //Send data over Serial
        if (!file.open(currentFilename, O_READ)) {
          Serial.println("Open file failed"); 
        }
        int data;
        uint32_t fileSize = file.fileSize();
        //get fileSize number of digits
        int n = fileSize;
        int digits = 0;
        while(n>0){
            digits++;
            n = n/10;
        }
        char fileSizeString[digits];
        sprintf(fileSizeString,"%u",fileSize);

        //give pinecone time
        delay(500);

        //send data start command
        Serial.write('\r');
        Serial.write('\r');
        Serial.write('\r');
        Serial.write('\r');

        //send size of file in bytes as character sequence
        for(int i=0;i<strlen(fileSizeString);i++){
          Serial.write(fileSizeString[i]);
        }
        
        //end of fileSize, start of data
        Serial.write('\r');

        delay(300);

        //send file
        while ((data = file.read()) >= 0) Serial.write(data);
        file.close();
      }
    }
}