#ifndef SRC_AUDIO_AUDIO_H_
#define SRC_AUDIO_AUDIO_H_

// Includes
#include "xgpio.h"
#include <sleep.h>
#include "xiicps.h"
#include <xil_io.h>
#include <xil_types.h>
#include <xparameters.h>

// Defines
#define SCALE 7
#define IIC_SCLK_RATE 100000
#define IIC_SLAVE_ADDR 0b0011010
#define AUDIO_BASE XPAR_ZYBO_AUDIO_CTRL_0_BASEADDR
#define AUDIO_ENABLE_ID XPAR_DIGITAL_MUTE_DEVICE_ID

// Globals
XIicPs Iic;
XGpio Gpio_audio_enable;

// SSM internal registers
enum audio_regs {
	R0_LEFT_CHANNEL_ADC_INPUT_VOLUME	= 0x00,
	R1_RIGHT_CHANNEL_ADC_INPUT_VOLUME	= 0x01,
	R2_LEFT_CHANNEL_DAC_VOLUME			= 0x02,
	R3_RIGHT_CHANNEL_DAC_VOLUME			= 0x03,
	R4_ANALOG_AUDIO_PATH				= 0x04,
	R5_DIGITAL_AUDIO_PATH				= 0x05,
	R6_POWER_MANAGEMENT					= 0x06,
	R7_DIGITAL_AUDIO_I_F				= 0x07,
	R8_SAMPLING_RATE					= 0x08,
	R9_ACTIVE							= 0x09,
	R15_SOFTWARE_RESET					= 0x0F,
	R16_ALC_CONTROL_1					= 0x10,
	R17_ALC_CONTROL_2					= 0x11,
	R18_NOISE_GATE						= 0x12,
};

// Audio controller registers
enum i2s_regs {
	I2S_DATA_RX_L_REG	= 0x00 + AUDIO_BASE,
	I2S_DATA_RX_R_REG	= 0x04 + AUDIO_BASE,
	I2S_DATA_TX_L_REG   = 0x08 + AUDIO_BASE,
	I2S_DATA_TX_R_REG  	= 0x0C + AUDIO_BASE,
	I2S_STATUS_REG		= 0x10 + AUDIO_BASE,
};

// Prototypes
void audioConfig();
void outputAudio();
int initializeSound();
void audioWriteToReg(u8 u8RegAddr, u16 u16Data);
unsigned char iicConfig(unsigned int DeviceIdPS);

#endif
