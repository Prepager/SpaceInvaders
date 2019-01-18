#ifndef SRC_SHIELD_CORNER_CORNER_H_
#define SRC_SHIELD_CORNER_CORNER_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "../../Bullet/Bullet.h"

// Images
#include "Resources/State0.h"
#include "Resources/State1.h"
#include "Resources/State2.h"
#include "Resources/StateInv0.h"
#include "Resources/StateInv1.h"
#include "Resources/StateInv2.h"

__attribute__ ((unused))
static u8 *ShieldCornerImages[6] = {
	CornerState0,
	CornerState1,
	CornerState2,
	CornerStateInv0,
	CornerStateInv1,
	CornerStateInv2,
};

// Struct
typedef struct {
	// Positions
	u32 xPos;
	u32 yPos;

	// States
	int health;
	int depaint;
	int repaint;

	// Directions
	int inverseX;
	int inverseY;
} ShieldCorner;

// Constructor
void paintShieldCorner(ShieldCorner *corner, u8 *frame);
Bullet* collidesShieldCorner(ShieldCorner *corner, Bullet *bullet);

#endif
