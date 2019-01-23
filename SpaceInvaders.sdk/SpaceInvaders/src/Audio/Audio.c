// Header
#include "Audio.h"

// Initializes the IIC driver.
int initializeSound() {
	// Configure the IIC data structure.
	iicConfig(XPAR_XIICPS_0_DEVICE_ID);

	// Configure the Audio Codec's PLL.
	audioConfig();

	// Initialize the GPIO.
	int Status;
	Status = XGpio_Initialize(&Gpio_audio_enable, AUDIO_ENABLE_ID);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	// Set direction for enable.
	XGpio_SetDataDirection(&Gpio_audio_enable, 1, 0x00);
	XGpio_DiscreteWrite(&Gpio_audio_enable, 1, 1);

	// Return success.
    return XST_SUCCESS;
}

// Reset CODEC Software and power-up
void audioConfig() {
	// Define volumnes
	int adc_vol = 0b100010111; // 0b100 + volume
	int dac_vol = 0b001111000; // 0b.0 + volume 111 1001 def.

	// Write settings to registers.
	audioWriteToReg(R15_SOFTWARE_RESET, 				0b000000000); 	// Perform Reset
	usleep(75000);

	audioWriteToReg(R6_POWER_MANAGEMENT, 				0b000110000); 	// Power Up
	audioWriteToReg(R0_LEFT_CHANNEL_ADC_INPUT_VOLUME, 	adc_vol); 		// Default ADC Volume
	audioWriteToReg(R1_RIGHT_CHANNEL_ADC_INPUT_VOLUME, 	adc_vol); 		// Default ADC Volume
	audioWriteToReg(R2_LEFT_CHANNEL_DAC_VOLUME, 		dac_vol);		// Default DAC Volume
	audioWriteToReg(R3_RIGHT_CHANNEL_DAC_VOLUME, 		dac_vol);		// Default DAC Volume
	audioWriteToReg(R4_ANALOG_AUDIO_PATH, 				0b000010010); 	// Allow Mixed DAC, Mute MIC
	audioWriteToReg(R5_DIGITAL_AUDIO_PATH, 				0b000000000); 	// 48 kHz Sampling Rate emphasis, no high pass -- 0b000000111
	audioWriteToReg(R7_DIGITAL_AUDIO_I_F, 				0b000001110); 	// I2S Mode, set-up 32 bits
	audioWriteToReg(R8_SAMPLING_RATE, 					0b000000000);
	usleep(75000);

	audioWriteToReg(R9_ACTIVE, 							0b000000001); 	// Activate digital core
	audioWriteToReg(R6_POWER_MANAGEMENT, 				0b000100010); 	// Output Power Up
}

// Initializes the IIC driver
unsigned char iicConfig(unsigned int DeviceIdPS) {
	// Create config holder and status.
	XIicPs_Config *config;
	int status;

	// Look up the configuration in the config table.
	config = XIicPs_LookupConfig(DeviceIdPS);
	if(NULL == config) {
		return XST_FAILURE;
	}

	// Initialize the IIC driver configuration.
	status = XIicPs_CfgInitialize(&Iic, config, config->BaseAddress);
	if(status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Perform a self-test to ensure that the hardware was built correctly.
	status = XIicPs_SelfTest(&Iic);
	if (status != XST_SUCCESS) {
		xil_printf("IIC FAILED \r\n");
		return XST_FAILURE;

	}

	// Set the IIC serial clock rate.
	status = XIicPs_SetSClk(&Iic, IIC_SCLK_RATE);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Return success.
	return XST_SUCCESS;
}

// Write to one of the registers from the audio controller.
void audioWriteToReg(u8 u8RegAddr, u16 u16Data) {
	unsigned char u8TxData[2];

	u8TxData[0] = u8RegAddr << 1;
	u8TxData[0] = u8TxData[0] | ((u16Data >> 8) & 0b1);

	u8TxData[1] = u16Data & 0xFF;

	XIicPs_MasterSendPolled(&Iic, u8TxData, 2, IIC_SLAVE_ADDR);
	while(XIicPs_BusIsBusy(&Iic));
}

// Stream audio to audio controller output.
void outputAudio(u32 *track) {
	// Prepare buffer and bit size.
	u32 buffer, bitsize = 8;

	// Shifts buffer by 8 bit to match track def.
	buffer = (uint32_t)((track[0] << 0) | (track[1] << bitsize));

	// Write audio input to codec.
	Xil_Out32(I2S_DATA_TX_L_REG, buffer);
	Xil_Out32(I2S_DATA_TX_R_REG, buffer);
}
