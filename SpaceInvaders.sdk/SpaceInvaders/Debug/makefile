################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/dynclk/subdir.mk
-include src/display_ctrl/subdir.mk
-include src/audio/subdir.mk
-include src/Timer/subdir.mk
-include src/Text/subdir.mk
-include src/Shield/Corner/subdir.mk
-include src/Shield/Block/subdir.mk
-include src/Shield/subdir.mk
-include src/Score/subdir.mk
-include src/SDCard/src/subdir.mk
-include src/SDCard/subdir.mk
-include src/Player/subdir.mk
-include src/Menu/subdir.mk
-include src/Keyboard/subdir.mk
-include src/Health/subdir.mk
-include src/Enemy/subdir.mk
-include src/Bullet/subdir.mk
-include src/Bonus/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
SpaceInvaders.elf.size \


# All Target
all: pre-build main-build

# Main-build Target
main-build: SpaceInvaders.elf secondary-outputs

# Tool invocations
SpaceInvaders.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v7 gcc linker'
	arm-none-eabi-gcc -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -Wl,-build-id=none -specs=Xilinx.spec -Wl,-T -Wl,../src/lscript.ld -L../../SpaceInvaders_bsp/ps7_cortexa9_0/lib -o "SpaceInvaders.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

SpaceInvaders.elf.size: SpaceInvaders.elf
	@echo 'Invoking: ARM v7 Print Size'
	arm-none-eabi-size SpaceInvaders.elf  |tee "SpaceInvaders.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) SpaceInvaders.elf
	-@echo ' '

pre-build:
	-a9-linaro-pre-build-step
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY: main-build pre-build

-include ../makefile.targets
