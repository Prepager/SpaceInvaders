#ifndef SRC_MENU_MENU_H_
#define SRC_MENU_MENU_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "../settings.h"
#include "../Text/Text.h"
#include "../Player/Player.h"
#include "../SDCard/SDCard.h"

// Images
#include "Resources/Logo.h"

// Constructors
void paintMenu(u8 *frame);
void paintNewScore(u8 *frame);
void initializeMenu(Player *player);
void paintEntries(PlayerEntry *entry, int index, u8 *frame);

#endif
