################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/game/dino.c 

OBJS += \
./Core/Src/game/dino.o 

C_DEPS += \
./Core/Src/game/dino.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/game/%.o Core/Src/game/%.su Core/Src/game/%.cyclo: ../Core/Src/game/%.c Core/Src/game/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-game

clean-Core-2f-Src-2f-game:
	-$(RM) ./Core/Src/game/dino.cyclo ./Core/Src/game/dino.d ./Core/Src/game/dino.o ./Core/Src/game/dino.su

.PHONY: clean-Core-2f-Src-2f-game

