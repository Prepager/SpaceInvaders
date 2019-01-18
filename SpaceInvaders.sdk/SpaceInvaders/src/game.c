// Includes
#include "game.h"

// Timer structs.
XTime enemyTimer;
XTime currentTime;

// Buffer arrays.
u8 buffer[DISPLAY_NUM_FRAMES][MAX_FRAME];
u8 *bufferPointer[DISPLAY_NUM_FRAMES];

// Object arrays.
Player player;
Health health;
Shield shields[SHIELD_COUNT];
Bullet *enemyBullets[ENEMY_BULLETS];
Enemy enemies[ENEMY_ROWS*ENEMY_COLS];

// Object values.
int enemySpeed = ENEMY_SPEED;

/**
 * Initialize program and start rendering.
 */
int main() {
//	assertHighScoreFile();
//	int a[5] = {10, 20, 44, 33, 1};
//	saveScores(a);
//	while(1){}

	readScores();

	insertScore(99, "John");
//	insertScore(200, "Emil");
//	insertScore(1000, "AnneMarethe");
	while(1)

	initializePS2(); // Initializes the PS 2 Keyboard
	testKeyboard();		// Has infinite LOOP !!!!!

	Initialize_Sound_IPs(); // Has while loop !!!!!!
	// Initialize the devices.
	initialize();


	// Start rendering infinity loop.
	while(1) {
		// Read in the current time.
		XTime_GetTime(&currentTime);

		// Depaint the game objects.
		depaint();

		// Reposition the game objects.
		position();

		// Check for collisions.
		collides();

		// Repaint the game objects.
		paint();

		// Update draw timers.
		if (timePast(enemyTimer, enemySpeed)) {
			enemyTimer = currentTime;
		}

		// Flush the frame cache.
		Xil_DCacheFlushRange((unsigned int) getFrame(), MAX_FRAME);
	}

	// Return unsuccessful run.
	return 0;
}

/**
 * Initialize the devices and objects.
 */
void initialize()
{
	// Initialize the display.
	initializeDisplay();

	// Initialize game objects.
	initializePlayer(&player);
	initializeShields(shields);
	initializeEnemies(enemies);
	initializeHealth(&health, &player.health);
}

/**
 * Paint the game objects.
 */
void paint()
{
	// Get the current frame.
	u8 *frame = getFrame();

	// Draw the background if needed.
	static int drawBackground = 1;
	if (drawBackground) {
		// Draw the background.
		memset(&frame[0], BACKGROUND, sizeof(u8) * MAX_FRAME);

		// Disable background drawing.
		drawBackground = 0;
	}

	// Draw the game elements.
	paintPlayer(&player, frame);
	paintShields(shields, frame);
	if (timePast(enemyTimer, enemySpeed)) paintEnemies(enemies, frame);

	// Draw enemy bullets.
	for (int i = 0; i < ENEMY_BULLETS; i++) {
		if(enemyBullets[i]) paintBullet(enemyBullets[i], frame);
	}

	// Draw the top elements.
	paintHealth(&health, frame);
}

/**
 * Depaint the game objects.
 */
void depaint()
{
	// Get the current frame.
	u8 *frame = getFrame();

	// Remove the game elements.
	depaintPlayer(&player, frame);
	if (timePast(enemyTimer, enemySpeed)) depaintEnemies(enemies, frame);

	// Draw enemy bullets.
	for (int i = 0; i < ENEMY_BULLETS; i++) {
		if(enemyBullets[i]) depaintBullet(enemyBullets[i], frame);
	}
}

/**
 * Position the game objects.
 */
void position()
{
	// Position the game elements.
	positionPlayer(&player);
	if (timePast(enemyTimer, enemySpeed)) {
		// Position the enemies and recalculate speed.
		enemySpeed = ENEMY_SPEED - (ENEMY_SPEED_ROW * positionEnemies(enemies));

		// Fire bullets from enemies.
		fireEnemies(enemies, enemyBullets);
	}

	// Position enemy bullets.
	for (int i = 0; i < ENEMY_BULLETS; i++) {
		if(enemyBullets[i]) enemyBullets[i] = positionBullet(enemyBullets[i], BULLET_ENEMY_MOVEMENT);
	}
}

/**
 * Check for collisions on game objects.
 */
void collides()
{
	// Check if the bullet exists.
	if (player.bullet) {
		// Check collision for enemies and shields.
		if (player.bullet) player.bullet = collidesEnemies(enemies, player.bullet);
		if (player.bullet) player.bullet = collidesShields(shields, player.bullet);

		// Repaint enemies if hit.
		if (! player.bullet) {
			paintEnemies(enemies, getFrame());
		}
	}

	// Check collision enemy bullets.
	for (int i = 0; i < ENEMY_BULLETS; i++) {
		// Check collision with player and shields.
		if(enemyBullets[i]) enemyBullets[i] = collidesPlayer(&player, enemyBullets[i]);
		if(enemyBullets[i]) enemyBullets[i] = collidesShields(shields, enemyBullets[i]);

		// Repaint enemy if collides with enemy bullets.
		Enemy *collides = collidesReturnEnemy(enemies, enemyBullets[i]);
		if (collides) paintEnemy(collides, getFrame());
	}
}

/**
 * Return the current frame pointer.
 */
u8* getFrame()
{
	return controller.framePtr[controller.curFrame];
}

/**
 * Return whether defined time has passed.
 */
int timePast(XTime timer, int time)
{
	return (currentTime - timer) >= time;
}
