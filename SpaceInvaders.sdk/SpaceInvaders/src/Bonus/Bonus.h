#ifndef SRC_BONUS_BONUS_H_
#define SRC_BONUS_BONUS_H_

// Includes
#include <math.h>
#include "xil_io.h"
#include "xil_types.h"
#include "../settings.h"
#include "../Bullet/Bullet.h"

// Images
#include "Resources/MonsterBonus.h"

// Struct
typedef struct {
	// Positions
	int xPos;
	int yPos;

	// States
	int dead;
	int dying;
} BonusEnemy;

// Constructors
void positionBonusEnemy(BonusEnemy *enemy);
void initializeBonusEnemy(BonusEnemy *enemy);
void paintBonusEnemy(BonusEnemy *enemy, u8 *frame);
void depaintBonusEnemy(BonusEnemy *enemy, u8 *frame);
Bullet* collidesBonusEnemy(BonusEnemy *enemy, Bullet *bullet, int *score);

#endif
