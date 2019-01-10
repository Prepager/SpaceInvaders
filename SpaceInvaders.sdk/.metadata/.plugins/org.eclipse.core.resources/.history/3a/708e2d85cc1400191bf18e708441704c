#include "Enemy.h"

/**
 * todo
 */
Enemy::Enemy(int width, int height, u32 x, u32 y) {
	//
	this->x = x;
	this->y = y;

	//
	this->width = width;
	this->height = height;
}

/**
 * todo
 */
void Enemy::render(u8 *frame, u32 x, u32 y, int addr) {
	frame[addr + 0] = 255;	// G
	frame[addr + 1] = 255;	// B
	frame[addr + 2] = 255;	// R
}

/**
 * todo
 */
bool Enemy::collides(u32 x, u32 y) {
	return (
		x >= this->x &&
		x <= this->x+this->width &&
		y >= this->y &&
		y <= this->y+this->height
	);
}
