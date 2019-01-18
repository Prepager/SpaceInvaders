// Header
#include "Enemy.h"

// Globals
int xState = 0;
int yState = 0;
int direction = 1;

// Get the enemy animation state.
u8* enemyImage(Enemy *enemy) {
	// Calculate offset based on enemy row.
	int offset = 0;
	if (enemy->row >= 3) offset = 4;
	else if (enemy->row > 0) offset = 2;

	// Return dead image if dying.
	if (enemy->dying) {
		return MonsterDeath;
	}

	// Return the image at offset + animation.
	return MonsterImages[offset + enemy->animation];
}

// Initialize the enemies.
void initializeEnemies(Enemy *enemies) {
	// Reset enemy state.
	xState = 0;
	yState = 0;
	direction = 1;

	// Loop through all possible enemies.
	int currentRow = 0;
	for (int i = 0; i < ENEMY_TOTAL; i++) {
		// Load in the current enemy.
		Enemy *enemy = &enemies[i];

		// Set defaults.
		enemy->width = ENEMY_SIZE;
		enemy->height = ENEMY_SIZE;

		enemy->row = currentRow;

		enemy->dead = 0;
		enemy->dying = 0;
		enemy->animation = 0;

		// Set points.
		enemy->points = 30;
		if (enemy->row >= 3) enemy->points = 10;
		else if (enemy->row > 0) enemy->points = 20;

		// Jump to next line if hit column count.
		if ((i+1) % ENEMY_COLS == 0) {
			// Increment the current row.
			currentRow++;
		}
	}

	// Position the enemies.
	positionEnemies(enemies);
}

// Paint the enemies.
void paintEnemies(Enemy *enemies, u8 *frame) {
	// Loop through all possible enemies.
	for (int i = 0; i < ENEMY_TOTAL; i++) {
		// Load in the current enemy.
		Enemy *enemy = &enemies[i];

		// Paint the single enemy.
		paintEnemy(enemy, frame);
	}
}

// Paint a single enemy.
void paintEnemy(Enemy *enemy, u8 *frame) {
	// Continue if already dead.
	if (enemy->dead) return;

	// Get the enemy animation state.
	u8 *state = enemyImage(enemy);

	// Skip rendering if outside display height.
	if ((enemy->yPos + ENEMY_SIZE) > DISPLAY_HEIGHT) return;

	// Generate the frame address for the starting position.
	int addr = (enemy->xPos * 3) + (enemy->yPos * STRIDE);

	// Loop through the height and set data.
	for (int ycoi = 0; ycoi < enemy->height; ycoi++) {
		// Copy enemy image data into frame.
		memcpy(&frame[addr], &state[ycoi * ENEMY_SIZE * 3], ENEMY_SIZE * 3);

		// Jump to next line.
		addr += STRIDE;
	}
}

// Depaint the enemies.
void depaintEnemies(Enemy *enemies, u8 *frame) {
	// Loop through all possible enemies.
	for (int i = 0; i < ENEMY_TOTAL; i++) {
		// Load in the current enemy.
		Enemy *enemy = &enemies[i];

		// Continue if already dead.
		if (enemy->dead) continue;

		// Skip rendering if outside display height.
		if ((enemy->yPos + ENEMY_SIZE) > DISPLAY_HEIGHT) continue;

		// Generate the frame address for the starting position.
		int addr = (enemy->xPos * 3) + (enemy->yPos * STRIDE);

		// Loop through the height and set data.
		for (int ycoi = 0; ycoi < enemy->height; ycoi++) {
			// Draw the background color.
			memset(&frame[addr], BACKGROUND, ENEMY_SIZE * 3);

			// Jump to next line.
			addr += STRIDE;
		}
	}
}

// Position the enemies.
int positionEnemies(Enemy *enemies) {
	// Make x state respect bounds.
	int xStateBounds = xState;
	if (xState > ENEMY_X_STATES) xStateBounds = ENEMY_X_STATES;
	if (xState < -ENEMY_X_STATES) xStateBounds = -ENEMY_X_STATES;

	// Calculate offset based on state.
	u32 curYOffset = ENEMY_Y_OFFSET + (ENEMY_SIZE * yState);
	u32 curXOffset = ENEMY_X_OFFSET + (ENEMY_X_STATE_OFFSET * xStateBounds);

	// Increment state based on direction.
	if (direction) {
		xState++;
	} else {
		xState--;
	}

	// Check if horizontal state is outside bounds.
	if (xState == -(ENEMY_X_STATES + 1) || xState == (ENEMY_X_STATES + 1)) {
		// Increment the vertical state.
		yState++;

		// Change the state direction.
		direction = ! direction;

		// Move horizontal state back to bounds.
		if (xState < 0) {
			xState++;
		} else {
			xState--;
		}
	}

	// Define starting x and y positions.
	u32 x = curXOffset, y = curYOffset;

	// Loop through enemies.
	int atDeath = 0, alive = 0;
	for (int i = 0; i < ENEMY_TOTAL; i++) {
		// Load in the current enemy.
		Enemy *enemy = &enemies[i];

		// Set new positions.
		enemy->xPos = x;
		enemy->yPos = y;

		// Set new animation.
		enemy->animation = ! enemy->animation;

		// Enable dead status when dying.
		if (enemy->dying) {
			enemy->dead = 1;
			enemy->dying = 0;
		}

		// Increment alive count.
		if (! enemy->dead) {
			alive++;
		}

		// Check if at or above death position and not dead.
		if (! enemy->dead && ! enemy->dying && y > ENEMY_Y_DEATH) {
			// Set dead status.
			atDeath = 1;
		}

		// Increment x with spacing.
		x += ENEMY_SIZE + ENEMY_SPACE;

		// Jump to next line if hit column count.
		if ((i+1) % ENEMY_COLS == 0) {
			// Reset x back to offset.
			x = curXOffset;

			// Jump to next line.
			y += ENEMY_SIZE + ENEMY_SPACE;
		}
	}

	// Return -1 if dead.
	if (atDeath) return -1;

	// Return the alive count.
	return alive;
}

// Make defined amount of enemies fire bullets.
void fireEnemies(Enemy *enemies, Bullet *bullets[]) {
	// Create array of alive enemies.
	int count = 0, alive[ENEMY_TOTAL];
	for (int i = 0; i < ENEMY_TOTAL; i++) {
		// Get the current enemy.
		Enemy *enemy = &enemies[i];

		// Add enemy index to list if alive.
		if (! enemy->dead && ! enemy->dying) {
			alive[count++] = i;
		}
	}

	// Find amount of bullets to be fired.
	int picks = (count < ENEMY_BULLETS) ? count : ENEMY_BULLETS;
	picks = rand() % (picks + 1);

	// Loop through the bullets to be fired.
	for (int i = 0; i < picks; i++) {
		// Skip if still active.
		if (bullets[i]) continue;

		// Get random alive enemy.
		Enemy *enemy = &enemies[alive[rand() % count]];

		// Allocate space for new bullet.
		bullets[i] = malloc(sizeof(Bullet));

		// Set new bullet position.
		bullets[i]->direction = 0;
		bullets[i]->yPos = enemy->yPos;
		bullets[i]->xPos = enemy->xPos + (ENEMY_SIZE / 2) - (BULLET_WIDTH / 2);
	}
}

// Check collision between bullet and enemies.
Bullet* collidesEnemies(Enemy *enemies, Bullet *bullet, int *score) {
	// Loop through all possible enemies.
	for (int i = 0; i < ENEMY_TOTAL; i++) {
		// Load in the current enemy.
		Enemy *enemy = &enemies[i];

		// Skip check if dead or dying.
		if (enemy->dead || enemy->dying) continue;

		// Check if bullet collides with enemy.
		if (collidesBullet(
				bullet,
				enemy->xPos - ENEMY_SPACE_HITAREA, enemy->yPos,
				ENEMY_SIZE + ENEMY_SPACE_HITAREA, ENEMY_SIZE
		)) {
			// Enable dying status on enemy.
			enemy->dying = 1;

			// Add enemy points to score.
			*score += enemy->points;

			// Delete the bullet and pointer.
			free(bullet);
			return NULL;
		}
	}

	// Return the original bullet
	return bullet;
}

// Find collision between bullet and enemies and return enemy.
Enemy* collidesReturnEnemy(Enemy *enemies, Bullet *bullet) {
	// Loop through all possible enemies.
	for (int i = 0; i < ENEMY_TOTAL; i++) {
		// Load in the current enemy.
		Enemy *enemy = &enemies[i];

		// Skip check if dead or dying.
		if (enemy->dead || enemy->dying) continue;

		// Check if bullet collides with enemy.
		if (collidesBullet(bullet, enemy->xPos, enemy->yPos, ENEMY_SIZE, ENEMY_SIZE)) {
			// Return collision enemy.
			return enemy;
		}
	}

	// Return null pointer
	return NULL;
}
