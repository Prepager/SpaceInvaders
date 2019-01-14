#ifndef SRC_BULLET_BULLET_H_
#define SRC_BULLET_BULLET_H_

// Includes
#include "stdlib.h"
#include "xil_io.h"
#include "xil_types.h"
#include "../settings.h"

// Struct
typedef struct {
	// Positions
	u32 xPos;
	u32 yPos;

	// Direction
	int direction;
} Bullet;

// Constructors
Bullet* positionBullet(Bullet *bullet);
void paintBullet(Bullet *bullet, u8 *frame);
void depaintBullet(Bullet *bullet, u8 *frame);
int collidesBullet(Bullet *bullet, u32 xPos, u32 yPos, int width, int height);

#endif
