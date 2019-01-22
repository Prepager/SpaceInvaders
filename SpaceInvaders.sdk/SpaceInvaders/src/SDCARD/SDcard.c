#include "SDcard.h"


/************ SD card parameters ************/
static FATFS FS;						// File System instance
FRESULT result;									// FRESULT variable
unsigned int BytesWr;							// Bytes written
/************ SD card parameters ************/

void insertScore(int newScore, char * name) {
	// Read Scores
	PlayerEntry scores[MAX_SCORES];
	readScores(scores);

	// If new score is high enough add it to list
	if(scores[MAX_SCORES - 1].playerScore < newScore) {
		// Create new player list and populate with old players
		PlayerEntry scoreList[MAX_SCORES+1];
		for(int i = 0; i < MAX_SCORES; i++) {
				scoreList[i].playerScore = scores[i].playerScore;
				scoreList[i].playerName[0] = '\0';
				strcpy(scoreList[i].playerName,scores[i].playerName);
		}

		// Create new player entity and add to list
		PlayerEntry newPlayer;
		newPlayer.playerScore = newScore;
		strcpy(newPlayer.playerName, name);
		scoreList[MAX_SCORES] = newPlayer;

		// Sort scores and save in MAX_SCORES long array
		bubbleSort(scoreList);

		for(int i = 0; i < MAX_SCORES; i++) {
				scores[i] = scoreList[i];
		}

		// Save scores to SD
		saveScores(scoreList);
	}

}

void saveScores(PlayerEntry *scoreList) {
	// Initializes the SD Card
	initializeSD();

	// Mount root path, with forced imidiate mount
	f_mount(&FS,"0:/", 1);

	// File instance
	FIL file;

	// Open file if exists, create if not
	result = f_open(&file, _FILE_, FA_CREATE_ALWAYS | FA_WRITE /*| FA_READ*/);
	if (result) {
//		if(debug) xil_printf("Returning ... \n");
	    f_close(&file);
		return;
	}

	// Write scores and players
	for(int i = 0; i < MAX_SCORES; i++) {
		// Create and write to score String
		char score[12];
		sprintf(score, "%d", scoreList[i].playerScore);

		// Allocate mem for complete string
		char format[strlen(score) + 1 + strlen(scoreList[i].playerName) + 3];
		format[0] = '\0';

		// Lineendingt
		char ending[2] = {13, 10};

		// Concat strings
		strcat(format, score);
		strcat(format,";");
		strcat(format,scoreList[i].playerName);
		strcat(format,ending);

		result = f_write(&file, (char*)format, strlen(format), &BytesWr);
	}


	//*bw < strlen(str)

    f_close(&file);
//    cleanup_platform();
}

void bubbleSort(PlayerEntry *array) {
	for(int i = 0; i <= (MAX_SCORES); i++) {
		for(int j = 0; j < (MAX_SCORES - i); j++) {
			if (array[j].playerScore < array[j+1].playerScore) {
				swap(&array[j], &array[j+1]);
			}
		}
	}
//	return array;
}

void swap(PlayerEntry *a, PlayerEntry *b) {
	PlayerEntry temp = *a;
	*a = *b;
	*b = temp;
}

void readScores(PlayerEntry * playerList) {
    // Initializes the SD Card
	initializeSD();

	// Mount root path, with forced imidiate mount
	f_mount(&FS,/*"0:/"*/"", 1);

	// File instance
	FIL file;

	// Open file if exists, create if not
	result = f_open(&file, _FILE_, FA_OPEN_ALWAYS | FA_READ);
	// If file is non existing create it
	if (result) {
//		if(debug) xil_printf("Returning ... \n");
	    f_close(&file);
		return;
	}

	// Buffer
	char buffer[(SCORE_LIMIT*MAX_SCORES) + (PLAYERNAME_LENGTH)];

	// Clear playerScores and create counter
	for(int i = 0; i < MAX_SCORES; i++) {
		playerList[i].playerScore = 0;
		playerList[i].playerName[0] = '\0';
	}
	int e = 0;
	// Read line
	while(f_gets(buffer, sizeof buffer, &file) ) {
		// instansiate variables for read mode (numbers/names) and indice in names
		int seperation = 0, n = 0;

		// Loop through the read buffer
		for(int i = 0; i <= sizeof buffer; i++) {
			// If \r \n \0 is found break out - and reset seperation var
			if( ((buffer[i] == 13) && (buffer[i+1] == 10) && (buffer[i+2] == 0)) || (n >= PLAYERNAME_LENGTH)) {
				seperation = 0;
				break;
			}

			// If score/name seperater is found set mode and continue
			if( buffer[i] == ';') {
				seperation = 1;
				continue;
			}

			// Seperation 0 = getting numbers
			if(seperation == 0) {
				// Read char as int
				int temp = charToInt(buffer[i]);
				// Multiply by 10 and add temp (current char in buffer)
				playerList[e].playerScore = temp == -1 ? playerList[e].playerScore : (playerList[e].playerScore << 3) + (playerList[e].playerScore << 1) + temp;
			} else { // Seperation = 1, get remaining non termination chars and save
				playerList[e].playerName[n] = buffer[i];
				n++;
			}
		}
		for(int i = n; i < PLAYERNAME_LENGTH-1; i++) playerList[e].playerName[i] = 32;
		playerList[e].playerName[n] = 0;
        e++;
    }

    // Close the file and SD platform
    f_close(&file);
//  cleanup_platform();
//	if(debug) xil_printf("File Closed\n");
}

int charToInt(char c) {
	int temp = -1;
	if( (c > 47)&&(c < 58) ) temp = c - 48;
	return temp;
}

