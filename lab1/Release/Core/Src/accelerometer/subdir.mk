################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/accelerometer/accelerometer.c 

OBJS += \
./Core/Src/accelerometer/accelerometer.o 

C_DEPS += \
./Core/Src/accelerometer/accelerometer.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/accelerometer/%.o Core/Src/accelerometer/%.su Core/Src/accelerometer/%.cyclo: ../Core/Src/accelerometer/%.c Core/Src/accelerometer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-accelerometer

clean-Core-2f-Src-2f-accelerometer:
	-$(RM) ./Core/Src/accelerometer/accelerometer.cyclo ./Core/Src/accelerometer/accelerometer.d ./Core/Src/accelerometer/accelerometer.o ./Core/Src/accelerometer/accelerometer.su

.PHONY: clean-Core-2f-Src-2f-accelerometer

