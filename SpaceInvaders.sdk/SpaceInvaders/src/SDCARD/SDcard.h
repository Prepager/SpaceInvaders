/*
 * SDcard.h
 *
 *  Created on: 17 Jan 2019
 *      Author: John
 */

#ifndef SRC_SDCARD_SDCARD_H_
#define SRC_SDCARD_SDCARD_H_

//#define _USE_STRFUNC 1
//#undef FILE_SYSTEM_USE_STRFUNC
//#define FILE_SYSTEM_USE_STRFUNC 1

#include <stdlib.h>
#include <math.h>

#include "platform.h"
#include "../settings.h"
#include "src/include/ff.h" //  SD CARD Configuration file

#define debug 1
#define _FILE_ "Scores.TXT"

typedef struct {
	int playerScore;
	char playerName[PLAYERNAME_LENGTH];
} PlayerEntry;

void insertScore(int newScore, char *name);
void saveScores(PlayerEntry *scoreList);
void bubbleSort(PlayerEntry *array);
void readScores(PlayerEntry * playerList);
int charToInt(char c);
void swap(PlayerEntry *a, PlayerEntry *b);

#endif /* SRC_SDCARD_SDCARD_H_ */
