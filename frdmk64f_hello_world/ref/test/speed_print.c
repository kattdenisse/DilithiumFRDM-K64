#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include "cpucycles.h"
#include "speed_print.h"

static int cmp_uint64(const void *a, const void *b) {
  if(*(uint32_t *)a < *(uint32_t *)b) return -1;
  if(*(uint32_t *)a > *(uint32_t *)b) return 1;
  return 0;
}

static uint32_t median(uint32_t *l, size_t llen) {
  qsort(l,llen,sizeof(uint32_t),cmp_uint64);

  if(llen%2) return l[llen/2];
  else return (l[llen/2-1]+l[llen/2])/2;
}

static uint32_t average(uint32_t *t, size_t tlen) {
  size_t i;
  uint32_t acc=0;

  for(i=0;i<tlen;i++)
    acc += t[i];

  return acc/tlen;
}

void print_results(const char *s, uint32_t *t, uint32_t* tf, size_t tlen) {
  size_t i;
//  static uint32_t overhead = UINT32_MAX;
//
//  if(tlen < 2) {
//    fprintf(stderr, "ERROR: Need a least two cycle counts!\n");
//    return;
//  }
//
//  if(overhead  == (uint32_t)UINT32_MAX)
//    overhead = cpucycles_overhead();

  tlen--;
  for(i=0;i<tlen;++i)
    t[i] = tf[i] - t[i];

  printf("%s\n", s);
  printf("median: %llu cycles/ticks\n", (unsigned long long)median(t, tlen));
  printf("average: %llu cycles/ticks\n", (unsigned long long)average(t, tlen));
  printf("\n");
}
