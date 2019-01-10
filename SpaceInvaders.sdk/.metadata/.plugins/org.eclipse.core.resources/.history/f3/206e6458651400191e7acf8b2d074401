#include "xil_types.h"

#ifndef SRC_GAMEOBJECT_H_
#define SRC_GAMEOBJECT_H_

#define STRIDE (1920 * 3)

class GameObject {
	public:
		// Positions
		u32 xPos = 0;
		u32 yPos = 0;

		// Sizes
		int width = 0;
		int height = 0;

		//
		virtual void render(u8 *frame) = 0;
};

#endif
