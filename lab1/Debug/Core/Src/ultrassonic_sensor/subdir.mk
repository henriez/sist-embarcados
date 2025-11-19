################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/ultrassonic_sensor/ultrassonic_sensor.c 

OBJS += \
./Core/Src/ultrassonic_sensor/ultrassonic_sensor.o 

C_DEPS += \
./Core/Src/ultrassonic_sensor/ultrassonic_sensor.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/ultrassonic_sensor/%.o Core/Src/ultrassonic_sensor/%.su Core/Src/ultrassonic_sensor/%.cyclo: ../Core/Src/ultrassonic_sensor/%.c Core/Src/ultrassonic_sensor/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -u _printf_float -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-ultrassonic_sensor

clean-Core-2f-Src-2f-ultrassonic_sensor:
	-$(RM) ./Core/Src/ultrassonic_sensor/ultrassonic_sensor.cyclo ./Core/Src/ultrassonic_sensor/ultrassonic_sensor.d ./Core/Src/ultrassonic_sensor/ultrassonic_sensor.o ./Core/Src/ultrassonic_sensor/ultrassonic_sensor.su

.PHONY: clean-Core-2f-Src-2f-ultrassonic_sensor

