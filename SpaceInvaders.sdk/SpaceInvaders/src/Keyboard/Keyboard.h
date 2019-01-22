#ifndef SRC_KEYBOARD_KEYBOARD_H_
#define SRC_KEYBOARD_KEYBOARD_H_

// Includes
#include "xil_io.h"
#include "axi_ps2.h"
#include "xscugic.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "../settings.h"

// Constructors
char keyPress();
void processInput();
void initializeKeyboard();
unsigned char readKeyAddress();
int keyPressed(char character);
int keysPressed(char char1, char char2);
void addInputCharacter(char character);
void removeInputCharacter(char character);
char mapCharacter(unsigned char character);

#endif
