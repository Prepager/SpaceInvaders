#ifndef SRC_MENU_MENU_H_
#define SRC_MENU_MENU_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "../settings.h"
#include "../Text/Text.h"
#include "../SDCARD/SDcard.h"
#include "../Player/Player.h"

// Images
#include "Resources/Logo.h"

// Struct
typedef struct {
	// General
	Text gameOver;
	Text pressKey;
	int redrawScores;

	// Scores
	Text name;
	Text newScore;
	Text entryNames[MAX_SCORES];
	Text entryScores[MAX_SCORES];

	// Relations
	Player *player;
} Menu;

// Constructors
void paintMenu(Menu *menu, u8 *frame);
void paintNewScore(Menu *menu, u8 *frame);
void initializeMenu(Menu *menu, Player *player);
void paintEntries(Menu *menu, PlayerEntry *entry, int index, u8 *frame);

#endif
