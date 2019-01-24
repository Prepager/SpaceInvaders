#ifndef SRC_PLAYER_PLAYER_H_
#define SRC_PLAYER_PLAYER_H_

// Includes
#include "xgpio.h"
#include "xil_io.h"
#include "stdlib.h"
#include "xil_types.h"
#include "../settings.h"
#include "../Bullet/Bullet.h"
#include "../Keyboard/Keyboard.h"

// Images
#include "Resources/Ship.h"
#include "Resources/Death/State0.h"
#include "Resources/Death/State1.h"

// Struct
typedef struct {
	// General
	int score;
	int health;
	u32 position;
	char name[PLAYERNAME_LENGTH];

	// General
	int dying;
	int dyingState;

	// Relations
	Bullet *bullet;
} Player;

// Constructors
u8 readPlayerInput();
u8 readPlayerSpeed();
void centerPlayer(Player *player);
void writePlayerHealth(int health);
void positionPlayer(Player *player);
void initializePlayer(Player *player);
void paintPlayer(Player *player, u8 *frame);
void depaintPlayer(Player *player, u8 *frame);
Bullet* collidesPlayer(Player *player, Bullet *bullet);

#endif
