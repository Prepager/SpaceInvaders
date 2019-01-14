#ifndef SRC_SHIELD_BLOCK_BLOCK_H_
#define SRC_SHIELD_BLOCK_BLOCK_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"

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
	// Sizes
	u32 height;
	u32 width;

	// Positions
	u32 xPos;
	u32 yPos;

	// States
	int health;
} ShieldBlock;

#endif
