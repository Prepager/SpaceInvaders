#ifndef SETTINGS_H_
#define SETTINGS_H_

/* ------------------------------------------------------------ */
/*		    			Game Declarations		    		  	*/
/* ------------------------------------------------------------ */

#define ENEMY_ROWS 5
#define ENEMY_COLS 11

#define ENEMY_SIZE 20
#define ENEMY_SPACE 10

#define ENEMY_SPEED 1000

#define ENEMY_X_STATES 6
#define ENEMY_X_OFFSET (DISPLAY_WIDTH - (ENEMY_COLS * (ENEMY_SIZE + ENEMY_SPACE))) / 2
#define ENEMY_X_STATE_OFFSET (ENEMY_X_OFFSET / (ENEMY_X_STATES + 1))

#define ENEMY_Y_OFFSET (ENEMY_X_OFFSET / 2)

/* ------------------------------------------------------------ */
/*					Miscellaneous Declarations					*/
/* ------------------------------------------------------------ */

#define MAX_FRAME 	(1920*1080*3)
#define STRIDE 		(1920 * 3)

// Background Color
#define BACKGROUND 255

// Display Size
#define DISPLAY_WIDTH 	640
#define DISPLAY_HEIGHT	480

#endif