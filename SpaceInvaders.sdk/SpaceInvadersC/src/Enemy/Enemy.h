#ifndef SRC_ENEMY_ENEMY_H_
#define SRC_ENEMY_ENEMY_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "../settings.h"

// Images
#include "Resources/MonsterDeath.h"
#include "Resources/Monster1/State0.h"
#include "Resources/Monster1/State1.h"
#include "Resources/Monster2/State0.h"
#include "Resources/Monster2/State1.h"
#include "Resources/Monster3/State0.h"
#include "Resources/Monster3/State1.h"

__attribute__ ((unused))
static u8 *MonsterImages[6] = {
	Monster1State0,
	Monster1State1,
	Monster2State0,
	Monster2State1,
	Monster3State0,
	Monster3State1,
};

// Struct
typedef struct {
	// Sizes
	u32 height;
	u32 width;

	// Positions
	u32 xPos;
	u32 yPos;

	// Animation
	int row;
	int animation;
} Enemy;

// Constructors
u8* enemyImage(Enemy *enemy);
void positionEnemies(Enemy *enemies);
void initializeEnemies(Enemy *enemies);
void paintEnemies(Enemy *enemies, u8 *frame);
void depaintEnemies(Enemy *enemies, u8 *frame);

#endif
