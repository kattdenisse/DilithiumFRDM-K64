################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../device/system_MK64F12.c 

OBJS += \
./device/system_MK64F12.o 

C_DEPS += \
./device/system_MK64F12.d 


# Each subdirectory must supply rules for building sources it contributes
device/%.o: ../device/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DPRINTF_FLOAT_ENABLE=0 -DSCANF_FLOAT_ENABLE=0 -DPRINTF_ADVANCED_ENABLE=0 -DSCANF_ADVANCED_ENABLE=0 -DFRDM_K64F -DFREEDOM -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\Syslib" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\Syslib\sys" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\Syslib\hidden" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\ref" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\ref\test" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\board" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\source" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\drivers" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\device" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\CMSIS" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\utilities" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\serial_manager" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\lists" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\uart" -O0 -fno-common -g3 -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


