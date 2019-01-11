#ifndef SRC_PLAYER_PLAYER_H_
#define SRC_PLAYER_PLAYER_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "../settings.h"

// Images
#include "Resources/Ship.h"

// Struct
typedef struct {
	// General
	int health;

	// Positions
	u32 position;
} Player;

// Constructors
void positionPlayer(Player *player);
void paintPlayer(Player *player, u8 *frame);
void depaintPlayer(Player *player, u8 *frame);

#endif
