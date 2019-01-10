#ifndef SRC_SCENE_SCENE_H_
#define SRC_SCENE_SCENE_H_

#include "../GameObject.h"

class Scene: public GameObject {
	public:
		Scene(int width, int height);
		virtual bool collides(u32 x, u32 y);
		virtual void render(u8 *frame, u32 x, u32 y, int addr);
};

#endif
