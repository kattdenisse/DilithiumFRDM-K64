#ifndef CPUCYCLES_H
#define CPUCYCLES_H

#include <stdint.h>

#define DWT_CTRL    	*((volatile uint32_t*)0xE0001000)  //
#define get_timer()   	*((volatile uint32_t*)0xE0001004)               // Get value from CYCCNT register
#define DEM_CR      	*((volatile uint32_t*)0xE000EDFC)

#define  DEM_CR_TRCENA                   (1 << 24)
#define  DWT_CR_CYCCNTENA                (1 <<  0)
#define start_timer()   *((volatile uint32_t*)0xE0001000) |= DWT_CR_CYCCNTENA  // Enable CYCCNT register
#define stop_timer()   	*((volatile uint32_t*)0xE0001000) = 0x40000000  // Disable CYCCNT register
#define enable()		*((volatile uint32_t*)0xE000EDFC) |= DEM_CR_TRCENA
#define reset()			*((volatile uint32_t*)0xE0001004) = 0
//#define get_timer()   	*((volatile uint32_t*)0xE0001004)               // Get value from CYCCNT register


#ifdef USE_RDPMC  /* Needs echo 2 > /sys/devices/cpu/rdpmc */

static inline uint64_t cpucycles(void) {
  const uint32_t ecx = (1U << 30) + 1;
  uint64_t result;

  __asm__ volatile ("rdpmc; shlq $32,%%rdx; orq %%rdx,%%rax"
    : "=a" (result) : "c" (ecx) : "rdx");

  return result;
}

#else

static inline uint32_t cpucycles(void) {
	uint32_t result;
	result = get_timer();

	return result;
}

#endif

uint32_t cpucycles_overhead(void);

void cpucycles_init(void);
void cpucycles_end(void);

#endif
