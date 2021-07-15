#include <stdint.h>
#include "../sign.h"
#include "../poly.h"
#include "../polyvec.h"
#include "../params.h"
#include "cpucycles.h"
#include "speed_print.h"
#include "rng.h"

#include "test_speed.h"

#define NTESTS 2

uint32_t t[NTESTS];
void test_init(void)
{
    uint8_t             entropy_input[48];

	randombytes_init(entropy_input, NULL, 256);
	cpucycles_init();
}

int test_speed(void)
{
  unsigned int i;
  size_t siglen;
  uint8_t pk[CRYPTO_PUBLICKEYBYTES];
  uint8_t sk[CRYPTO_SECRETKEYBYTES];
  uint8_t sig[CRYPTO_BYTES];
  uint8_t seed[CRHBYTES];
  polyvecl mat[K];
  poly *a = &mat[0].vec[0];
  poly *b = &mat[0].vec[1];
  poly *c = &mat[0].vec[2];

  /*To do: Katya*/
//  for(i = 0; i < NTESTS; ++i) {
//    t[i] = cpucycles();
//    polyvec_matrix_expand(mat, seed);
//  }
//  print_results("polyvec_matrix_expand:", t, NTESTS);
//
//  for(i = 0; i < NTESTS; ++i) {
//    t[i] = cpucycles();
//    poly_uniform_eta(a, seed, 0);
//  }
//  print_results("poly_uniform_eta:", t, NTESTS);
//
//  for(i = 0; i < NTESTS; ++i) {
//    t[i] = cpucycles();
//    poly_uniform_gamma1(a, seed, 0);
//  }
//  print_results("poly_uniform_gamma1:", t, NTESTS);
//
//  for(i = 0; i < NTESTS; ++i) {
//    t[i] = cpucycles();
//    poly_ntt(a);
//  }
//  print_results("poly_ntt:", t, NTESTS);
//
//  for(i = 0; i < NTESTS; ++i) {
//    t[i] = cpucycles();
//    poly_invntt_tomont(a);
//  }
//  print_results("poly_invntt_tomont:", t, NTESTS);
//
//  for(i = 0; i < NTESTS; ++i) {
//    t[i] = cpucycles();
//    poly_pointwise_montgomery(c, a, b);
//  }
//  print_results("poly_pointwise_montgomery:", t, NTESTS);
//
//  for(i = 0; i < NTESTS; ++i) {
//    t[i] = cpucycles();
//    poly_challenge(c, seed);
//  }
//  print_results("poly_challenge:", t, NTESTS);

  for(i = 0; i < NTESTS; ++i) {
    t[i] = cpucycles();
    crypto_sign_keypair(pk, sk);
  }
  print_results("Keypair:", t, NTESTS);

  for(i = 0; i < NTESTS; ++i) {
    t[i] = cpucycles();
    crypto_sign_signature(sig, &siglen, sig, CRHBYTES, sk);
  }
  print_results("Sign:", t, NTESTS);

  for(i = 0; i < NTESTS; ++i) {
    t[i] = cpucycles();
    crypto_sign_verify(sig, CRYPTO_BYTES, sig, CRHBYTES, pk);
  }
  print_results("Verify:", t, NTESTS);

  return 0;
}
