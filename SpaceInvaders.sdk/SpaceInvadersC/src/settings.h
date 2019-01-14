#ifndef SETTINGS_H_
#define SETTINGS_H_

/* ------------------------------------------------------------ */
/*		    			Bullet Declarations		    		  	*/
/* ------------------------------------------------------------ */

#define BULLET_WIDTH 2
#define BULLET_HEIGHT 6
#define BULLET_MOVEMENT 3

/* ------------------------------------------------------------ */
/*		    			Player Declarations		    		  	*/
/* ------------------------------------------------------------ */

#define PLAYER_SIZE 24
#define PLAYER_MOVEMENT 1

#define PLAYER_KEY_LEFT 1
#define PLAYER_KEY_RIGHT 2
#define PLAYER_KEY_SHOOT 8

#define PLAYER_Y_OFFSET (DISPLAY_HEIGHT - (PLAYER_SIZE * 2))

/* ------------------------------------------------------------ */
/*		    			Enemy Declarations		    		  	*/
/* ------------------------------------------------------------ */

#define ENEMY_ROWS 5
#define ENEMY_COLS 11

#define ENEMY_SIZE 24
#define ENEMY_SPACE 10

#define ENEMY_SPEED (COUNTS_PER_SECOND * 0.8)

#define ENEMY_X_STATES 9
#define ENEMY_X_OFFSET (DISPLAY_WIDTH - (ENEMY_COLS * (ENEMY_SIZE + ENEMY_SPACE))) / 2
#define ENEMY_X_STATE_OFFSET (ENEMY_X_OFFSET / (ENEMY_X_STATES + 1))

#define ENEMY_Y_OFFSET (ENEMY_X_OFFSET / 2)

/* ------------------------------------------------------------ */
/*					Miscellaneous Declarations					*/
/* ------------------------------------------------------------ */

#define MAX_FRAME 	(1920*1080*3)
#define STRIDE 		(1920 * 3)

// Background Color
#define BACKGROUND 0

// Display Size
#define DISPLAY_WIDTH 	640
#define DISPLAY_HEIGHT	480

// GPIO
#define BTN_CHANNEL 1
#define BTN_MASK XGPIO_IR_CH1_MASK
#define GPIO_BTN_ID  XPAR_AXI_GPIO_BTN_DEVICE_ID

#endif
