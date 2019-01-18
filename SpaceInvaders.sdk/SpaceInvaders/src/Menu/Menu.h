#ifndef SRC_MENU_MENU_H_
#define SRC_MENU_MENU_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "../settings.h"
#include "../Text/Text.h"
#include "../Player/Player.h"

// Images
#include "Resources/Logo.h"

// Struct
typedef struct {
	// General
	Text gameOver;
	Text pressKey;

	// Relations
	Player *player;
} Menu;

// Constructors
void paintMenu(Menu *menu, u8 *frame);
void initializeMenu(Menu *menu, Player *player);

#endif
