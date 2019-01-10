#ifndef SRC_GAMEOBJECT_H_
#define SRC_GAMEOBJECT_H_

#include "xil_types.h"
#define STRIDE (1920 * 3)

class GameObject {
	public:
		// Position parameters.
		u32 x = 0;
		u32 y = 0;

		// Size parameters.
		int width = 0;
		int height = 0;

		// Abstract render function.
		virtual bool collides(u32 x, u32 y) = 0;
		virtual void render(u8 *frame, u32 x, u32 y, int addr) = 0;
};

#endif
