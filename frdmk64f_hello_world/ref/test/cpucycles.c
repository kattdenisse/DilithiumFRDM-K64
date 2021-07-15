#include <stdint.h>
#include "cpucycles.h"

uint32_t cpucycles_overhead(void) {
  uint32_t t0, t1, overhead = UINT32_MAX;
  unsigned int i;

  for(i=0;i<100000;i++) {
    t0 = cpucycles();
    __asm__ volatile("");
    t1 = cpucycles();
    if(t1 - t0 < overhead)
      overhead = t1 - t0;
  }

  return overhead;
}

void cpucycles_init(void)
{
	/* Habilitar periféricos DWT */
	enable();

	start_timer();
	reset();
}

void cpucycles_end(void)
{
	stop_timer();
}
