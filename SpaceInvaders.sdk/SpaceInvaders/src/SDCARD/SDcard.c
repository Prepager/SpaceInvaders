/*
 * SDcard.c
 *
 *  Created on: 17 Jan 2019
 *      Author: John
 */
#include "SDcard.h"

#define MAX_SCORES 5
#define SCORE_LIMIT sizeof(int)
#define debug 1

/************ SD card parameters ************/
static FATFS FS;						// File System instance

//FRESULT result;									// FRESULT variable
char FileName[32];								// File name
//static char *Log_File; 							// pointer to the log
//static const char *RootPath = "0:/";			//  string pointer to the logical drive number
unsigned int BytesWr;							// Bytes written
/************ SD card parameters ************/
char data[] = "This is a test";

void insertHighScore() {
    // Initializes the SD Card
	initializeSD();
	if(debug) xil_printf("SD Initialized\n");

	// Mount root path, with forced imidiate mount
	f_mount(&FS,/*"0:/"*/"", 1);
	if(debug) xil_printf("FS Mounted\n");

	// Open file
		//File Path string pointer
	static const char *FilePath = "Scores.TXT";//"HighScores.txt";	//  string pointer to the logical drive number
		// File instance
	FIL file;
	if(debug) xil_printf("File opened\n");

	// Open file if exists, create if not
	FRESULT result = f_open(&file, "Scores.TXT", FA_OPEN_ALWAYS | FA_READ);
	// If file is non existing create it
	if (result) {
		if(debug) xil_printf("Returning ... \n");
	    f_close(&file);
		return;
	}
	if(debug) xil_printf("File found\n");

	// Buffer
	char scores[SCORE_LIMIT*MAX_SCORES];
	if(debug) xil_printf("Scores Initialized\n");

	// Find amount of players
	int players = 0;
	while(f_gets(scores, sizeof scores, &file) ) {
		players++;
		if(debug) xil_printf("Players: %d\n",players);
	}

	// Read high scores as numbers
	int playerScores[players];
	int e = 0;
	result = f_open(&file, "Scores.TXT", FA_OPEN_ALWAYS | FA_READ);
	while(f_gets(scores, sizeof scores, &file) ) {
		if(debug) xil_printf("Scores: %s\n",scores);
		playerScores[e] = 0;
		for(int i = 0; i <= sizeof scores; i++) {
			int temp = charToInt(scores[i]);
			playerScores[e] = temp == -1 ? playerScores[e] : (playerScores[e] << 3) + (playerScores[e] << 1) + temp;
		}
        if(debug) xil_printf("Int: %d\n",playerScores[e]);
        e++;
    }

    // Close the file and SD platform
    f_close(&file);
    cleanup_platform();
	if(debug) xil_printf("File Closed\n");
}

int charToInt(char c) {
	switch(c) {
		case '1' : return 1;
		case '2' : return 2;
		case '3' : return 3;
		case '4' : return 4;
		case '5' : return 5;
		case '6' : return 6;
		case '7' : return 7;
		case '8' : return 8;
		case '9' : return 9;
		case '0' : return 0;
		default : return -1;
	}
}

