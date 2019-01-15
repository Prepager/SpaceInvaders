#ifndef SRC_SHIELD_BLOCK_BLOCK_H_
#define SRC_SHIELD_BLOCK_BLOCK_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "../../Bullet/Bullet.h"

// Images
#include "Resources/State0.h"
#include "Resources/State1.h"
#include "Resources/State2.h"
#include "Resources/State3.h"

__attribute__ ((unused))
static u8 *ShieldBlockImages[4] = {
	BlockState0,
	BlockState1,
	BlockState2,
	BlockState3,
};

// Struct
typedef struct {
	// Positions
	u32 xPos;
	u32 yPos;

	// States
	int health;
	int depaint;
} ShieldBlock;

// Constructors
void paintShieldBlock(ShieldBlock *block, u8 *frame);
void depaintShieldBlock(ShieldBlock *block, u8 *frame);
Bullet* collidesShieldBlock(ShieldBlock *block, Bullet *bullet);

#endif
