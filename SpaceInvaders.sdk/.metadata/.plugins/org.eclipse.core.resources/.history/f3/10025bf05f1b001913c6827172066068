#ifndef SRC_SHIELD_SHIELD_H_
#define SRC_SHIELD_SHIELD_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "Block/Block.h"
#include "../settings.h"
#include "Corner/Corner.h"
#include "../Bullet/Bullet.h"

// Struct
typedef struct {
	// Position
	u32 xPos;
	u32 yPos;

	// Elements
	ShieldBlock *blocks;
	ShieldCorner *corners;
} Shield;

// Constructors
void initializeShield(Shield *shield);
void initializeShields(Shield *shields);
void paintShield(Shield *shield, u8 *frame);
void paintShields(Shield *shields, u8 *frame);
Bullet* collidesShields(Shield *shields, Bullet *bullet);

#endif
