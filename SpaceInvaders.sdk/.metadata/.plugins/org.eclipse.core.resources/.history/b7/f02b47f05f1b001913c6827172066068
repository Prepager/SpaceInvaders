#ifndef SRC_HEALTH_HEALTH_H_
#define SRC_HEALTH_HEALTH_H_

// Includes
#include "xil_io.h"
#include "xil_types.h"
#include "../settings.h"

// Images
#include "../Player/Resources/Ship.h"

// Struct
typedef struct {
	// General
	int *health;
	int drawnHealth;
} Health;

// Constructors
void paintHealth(Health *health, u8 *frame);
void depaintHealth(Health *health, u8 *frame);
void initializeHealth(Health *health, int *value);

#endif
