//#include <cstdarg>
#include <stdint.h>
#include <stdbool.h>
//#include <cstdlib>
//#include <ostream>
//#include <new>

struct Vecdat {
  uint64_t *_0;
  uintptr_t _1;
  uintptr_t _2;
};

struct Mpzdat {
  uint64_t *_0;
  uintptr_t _1;
  uintptr_t _2;
  bool _3;
};

//extern "C" {

uint32_t rng_32();

uint64_t rng_64();

bool is_sprp_32n(uint32_t x, uint32_t base);

bool is_sprp_32i(int32_t x, int32_t base);

bool is_sprp_64n(uint64_t x, uint64_t base);

bool is_sprp_64i(int64_t x, int64_t base);

bool is_sprp_u128(uint64_t xlo, uint64_t xhi, uint64_t baselo, uint64_t basehi);

bool is_prime_32n(uint32_t x);

bool is_prime_32i(int32_t x);

bool is_prime_64n(uint64_t x);

bool is_prime_64i(int64_t x);

bool is_prime_u128(uint64_t lo, uint64_t hi);

bool is_prime_i128(uint64_t lo, int64_t hi);

uint32_t pi_32n(uint32_t x);

int32_t pi_32i(int32_t x);

uint64_t pi_64n(uint64_t x);

int64_t pi_64i(int64_t x);

uint8_t prime_gen_32n(uint8_t x, uint32_t *res);

uint8_t prime_gen_32i(uint8_t x, int32_t *res);

uint8_t prime_gen_64n(uint8_t x, uint64_t *res);

uint8_t prime_gen_64i(uint8_t x, int64_t *res);

uint8_t nth_prime_32n(uint32_t x, uint32_t *res);

uint8_t nth_prime_32i(int32_t x, int32_t *res);

uint8_t nth_prime_64n(uint64_t x, uint64_t *res);

uint8_t nth_prime_64i(int64_t x, int64_t *res);

uint32_t gcd_32n(uint32_t x, uint32_t y);

int32_t gcd_32i(int32_t x, int32_t y);

uint64_t gcd_64n(uint64_t x, uint64_t y);

int64_t gcd_64i(int64_t x, int64_t y);

uint32_t extended_gcd_32n(uint32_t x, uint32_t y, uint32_t *x_inv, uint32_t *y_inv);

int32_t extended_gcd_32i(int32_t x, int32_t y, int32_t *x_inv, int32_t *y_inv);

uint64_t extended_gcd_64n(uint64_t x, uint64_t y, uint64_t *x_inv, uint64_t *y_inv);

int64_t extended_gcd_64i(int64_t x, int64_t y, int64_t *x_inv, int64_t *y_inv);

uint8_t lcm_32n(uint32_t x, uint32_t y, uint32_t *res);

uint8_t lcm_32i(int32_t x, int32_t y, int32_t *res);

uint8_t lcm_64n(uint64_t x, uint64_t y, uint64_t *res);

uint8_t lcm_64i(int64_t x, int64_t y, int64_t *res);

uint32_t euler_totient_32n(uint32_t x);

int32_t euler_totient_32i(int32_t x);

uint64_t euler_totient_64n(uint64_t x);

int64_t euler_totient_64i(int64_t x);

uint8_t jordan_totient_32n(uint32_t x, uint32_t k, uint32_t *res);

uint8_t jordan_totient_32i(int32_t x, int32_t k, int32_t *res);

uint8_t jordan_totient_64n(uint64_t x, uint64_t k, uint64_t *res);

uint8_t jordan_totient_64i(int64_t x, int64_t k, int64_t *res);

uint32_t carmichael_totient_32n(uint32_t x);

int32_t carmichael_totient_32i(int32_t x);

uint64_t carmichael_totient_64n(uint64_t x);

int64_t carmichael_totient_64i(int64_t x);

uint8_t dedekind_psi_32n(uint32_t x, uint32_t k, uint32_t *res);

uint8_t dedekind_psi_32i(int32_t x, int32_t k, int32_t *res);

uint8_t dedekind_psi_64n(uint64_t x, uint64_t k, uint64_t *res);

uint8_t dedekind_psi_64i(int64_t x, int64_t k, int64_t *res);

uint8_t derivative_32n(uint32_t x, uint32_t *res);

uint8_t derivative_32i(int32_t x, int32_t *res);

uint8_t derivative_64n(uint64_t x, uint64_t *res);

uint8_t derivative_64i(int64_t x, int64_t *res);

uint32_t product_residue_32n(uint32_t x, uint32_t y, uint32_t n);

int32_t product_residue_32i(int32_t x, int32_t y, int32_t n);

uint64_t product_residue_64n(uint64_t x, uint64_t y, uint64_t n);

int64_t product_residue_64i(int64_t x, int64_t y, int64_t n);

uint32_t quadratic_residue_32n(uint32_t x, uint32_t n);

int32_t quadratic_residue_32i(int32_t x, int32_t n);

uint64_t quadratic_residue_64n(uint64_t x, uint64_t n);

int64_t quadratic_residue_64i(int64_t x, int64_t n);

uint8_t exp_residue_32n(uint32_t x, uint32_t y, uint32_t n, uint32_t *res);

uint8_t exp_residue_32i(int32_t x, int32_t y, int32_t n, int32_t *res);

uint8_t exp_residue_64n(uint64_t x, uint64_t y, uint64_t n, uint64_t *res);

uint8_t exp_residue_64i(int64_t x, int64_t y, int64_t n, int64_t *res);

uint8_t legendre_32n(uint32_t x, uint32_t n, int8_t *res);

uint8_t legendre_32i(int32_t x, int32_t n, int8_t *res);

uint8_t legendre_64n(uint64_t x, uint64_t n, int8_t *res);

uint8_t legendre_64i(int64_t x, int64_t n, int8_t *res);

int8_t liouville_32n(uint32_t x);

int8_t liouville_32i(int32_t x);

int8_t liouville_64n(uint64_t x);

int8_t liouville_64i(int64_t x);

double mangoldt_32n(uint32_t x);

double mangoldt_32i(int32_t x);

double mangoldt_64n(uint64_t x);

double mangoldt_64i(int64_t x);

int8_t mobius_32n(uint32_t x);

int8_t mobius_32i(int32_t x);

int8_t mobius_64n(uint64_t x);

int8_t mobius_64i(int64_t x);

bool k_free_32n(uint32_t x, uint32_t k);

bool k_free_32i(int32_t x, int32_t k);

bool k_free_64n(uint64_t x, uint64_t k);

bool k_free_64i(int64_t x, int64_t k);

uint8_t jacobi_32n(uint32_t x, uint32_t n, int8_t *res);

uint8_t jacobi_32i(int32_t x, int32_t n, int8_t *res);

uint8_t jacobi_64n(uint64_t x, uint64_t n, int8_t *res);

uint8_t jacobi_64i(int64_t x, int64_t n, int8_t *res);

uint32_t radical_32n(uint32_t x);

int32_t radical_32i(int32_t x);

uint64_t radical_64n(uint64_t x);

int64_t radical_64i(int64_t x);

uint32_t smooth_32n(uint32_t x);

int32_t smooth_32i(int32_t x);

uint64_t smooth_64n(uint64_t x);

int64_t smooth_64i(int64_t x);

bool is_smooth_32n(uint32_t x, uint32_t b);

bool is_smooth_32i(int32_t x, int32_t b);

bool is_smooth_64n(uint64_t x, uint64_t b);

bool is_smooth_64i(int64_t x, int64_t b);
/*
Vecdat factor_64n(uint64_t x);

Mpzdat mpz_from_string(char *x);

Mpzdat mpz_add(Mpzdat x, Mpzdat y);

Vecdat mpz_product(Vecdat x, Vecdat y);

bool mpz_prime(Vecdat x);

uint64_t trailing_zeros(const Mpzdat *self);
*/
//} // extern "C"
