################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../ref/crypto_hashblocks_sha512_inner32.s \
../ref/ntt.s \
../ref/pointwise_mont.s \
../ref/vector.s 

C_SRCS += \
../ref/crypto_hashblocks_sha512.c \
../ref/fips202.c \
../ref/packing.c \
../ref/poly.c \
../ref/polyvec.c \
../ref/rng.c \
../ref/rounding.c \
../ref/sign.c \
../ref/symmetric-shake.c 

S_UPPER_SRCS += \
../ref/keccakf1600.S 

OBJS += \
./ref/crypto_hashblocks_sha512.o \
./ref/crypto_hashblocks_sha512_inner32.o \
./ref/fips202.o \
./ref/keccakf1600.o \
./ref/ntt.o \
./ref/packing.o \
./ref/pointwise_mont.o \
./ref/poly.o \
./ref/polyvec.o \
./ref/rng.o \
./ref/rounding.o \
./ref/sign.o \
./ref/symmetric-shake.o \
./ref/vector.o 

C_DEPS += \
./ref/crypto_hashblocks_sha512.d \
./ref/fips202.d \
./ref/packing.d \
./ref/poly.d \
./ref/polyvec.d \
./ref/rng.d \
./ref/rounding.d \
./ref/sign.d \
./ref/symmetric-shake.d 


# Each subdirectory must supply rules for building sources it contributes
ref/%.o: ../ref/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DPRINTF_FLOAT_ENABLE=0 -DSCANF_FLOAT_ENABLE=0 -DPRINTF_ADVANCED_ENABLE=0 -DSCANF_ADVANCED_ENABLE=0 -DFRDM_K64F -DFREEDOM -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\Syslib" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\Syslib\sys" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\Syslib\hidden" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\ref" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\ref\test" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\board" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\source" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\drivers" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\device" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\CMSIS" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\utilities" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\serial_manager" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\lists" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\uart" -O0 -fno-common -g3 -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ref/%.o: ../ref/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\board" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\source" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\drivers" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\device" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\CMSIS" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\utilities" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\serial_manager" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\lists" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\uart" -g3 -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ref/%.o: ../ref/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\board" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\source" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\drivers" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\device" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\CMSIS" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\utilities" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\serial_manager" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\lists" -I"C:\Users\josue\Documents\MCUXpressoIDE_11.2.0_4120\workspaceCrystals\frdmk64f_hello_world\component\uart" -g3 -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


