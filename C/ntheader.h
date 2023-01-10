#include <cstdarg>
#include <cstdint>
#include <cstdlib>
#include <ostream>
#include <new>

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

extern "C" {

uint32_t rng_32();

uint64_t rng_64();

bool is_sprp_u32(uint32_t x, uint32_t base);

bool is_sprp_i32(int32_t x, int32_t base);

bool is_sprp_u64(uint64_t x, uint64_t base);

bool is_sprp_i64(int64_t x, int64_t base);

bool is_sprp_u128(uint64_t xlo, uint64_t xhi, uint64_t baselo, uint64_t basehi);

bool is_prime_u32(uint32_t x);

bool is_prime_i32(int32_t x);

bool is_prime_u64(uint64_t x);

bool is_prime_i64(int64_t x);

bool is_prime_u128(uint64_t lo, uint64_t hi);

bool is_prime_i128(uint64_t lo, int64_t hi);

uint32_t pi_u32(uint32_t x);

int32_t pi_i32(int32_t x);

uint64_t pi_u64(uint64_t x);

int64_t pi_i64(int64_t x);

uint8_t prime_gen_u32(uint8_t x, uint32_t *res);

uint8_t prime_gen_i32(uint8_t x, int32_t *res);

uint8_t prime_gen_u64(uint8_t x, uint64_t *res);

uint8_t prime_gen_i64(uint8_t x, int64_t *res);

uint8_t nth_prime_u32(uint32_t x, uint32_t *res);

uint8_t nth_prime_i32(int32_t x, int32_t *res);

uint8_t nth_prime_u64(uint64_t x, uint64_t *res);

uint8_t nth_prime_i64(int64_t x, int64_t *res);

uint32_t gcd_u32(uint32_t x, uint32_t y);

int32_t gcd_i32(int32_t x, int32_t y);

uint64_t gcd_u64(uint64_t x, uint64_t y);

int64_t gcd_i64(int64_t x, int64_t y);

uint32_t extended_gcd_u32(uint32_t x, uint32_t y, uint32_t *x_inv, uint32_t *y_inv);

int32_t extended_gcd_i32(int32_t x, int32_t y, int32_t *x_inv, int32_t *y_inv);

uint64_t extended_gcd_u64(uint64_t x, uint64_t y, uint64_t *x_inv, uint64_t *y_inv);

int64_t extended_gcd_i64(int64_t x, int64_t y, int64_t *x_inv, int64_t *y_inv);

uint8_t lcm_u32(uint32_t x, uint32_t y, uint32_t *res);

uint8_t lcm_i32(int32_t x, int32_t y, int32_t *res);

uint8_t lcm_u64(uint64_t x, uint64_t y, uint64_t *res);

uint8_t lcm_i64(int64_t x, int64_t y, int64_t *res);

uint32_t euler_totient_u32(uint32_t x);

int32_t euler_totient_i32(int32_t x);

uint64_t euler_totient_u64(uint64_t x);

int64_t euler_totient_i64(int64_t x);

uint8_t jordan_totient_u32(uint32_t x, uint32_t k, uint32_t *res);

uint8_t jordan_totient_i32(int32_t x, int32_t k, int32_t *res);

uint8_t jordan_totient_u64(uint64_t x, uint64_t k, uint64_t *res);

uint8_t jordan_totient_i64(int64_t x, int64_t k, int64_t *res);

uint32_t carmichael_totient_u32(uint32_t x);

int32_t carmichael_totient_i32(int32_t x);

uint64_t carmichael_totient_u64(uint64_t x);

int64_t carmichael_totient_i64(int64_t x);

uint8_t dedekind_psi_u32(uint32_t x, uint32_t k, uint32_t *res);

uint8_t dedekind_psi_i32(int32_t x, int32_t k, int32_t *res);

uint8_t dedekind_psi_u64(uint64_t x, uint64_t k, uint64_t *res);

uint8_t dedekind_psi_i64(int64_t x, int64_t k, int64_t *res);

uint8_t derivative_u32(uint32_t x, uint32_t *res);

uint8_t derivative_i32(int32_t x, int32_t *res);

uint8_t derivative_u64(uint64_t x, uint64_t *res);

uint8_t derivative_i64(int64_t x, int64_t *res);

uint32_t product_residue_u32(uint32_t x, uint32_t y, uint32_t n);

int32_t product_residue_i32(int32_t x, int32_t y, int32_t n);

uint64_t product_residue_u64(uint64_t x, uint64_t y, uint64_t n);

int64_t product_residue_i64(int64_t x, int64_t y, int64_t n);

uint32_t quadratic_residue_u32(uint32_t x, uint32_t n);

int32_t quadratic_residue_i32(int32_t x, int32_t n);

uint64_t quadratic_residue_u64(uint64_t x, uint64_t n);

int64_t quadratic_residue_i64(int64_t x, int64_t n);

uint8_t exp_residue_u32(uint32_t x, uint32_t y, uint32_t n, uint32_t *res);

uint8_t exp_residue_i32(int32_t x, int32_t y, int32_t n, int32_t *res);

uint8_t exp_residue_u64(uint64_t x, uint64_t y, uint64_t n, uint64_t *res);

uint8_t exp_residue_i64(int64_t x, int64_t y, int64_t n, int64_t *res);

uint8_t legendre_u32(uint32_t x, uint32_t n, int8_t *res);

uint8_t legendre_i32(int32_t x, int32_t n, int8_t *res);

uint8_t legendre_u64(uint64_t x, uint64_t n, int8_t *res);

uint8_t legendre_i64(int64_t x, int64_t n, int8_t *res);

int8_t liouville_u32(uint32_t x);

int8_t liouville_i32(int32_t x);

int8_t liouville_u64(uint64_t x);

int8_t liouville_i64(int64_t x);

double mangoldt_u32(uint32_t x);

double mangoldt_i32(int32_t x);

double mangoldt_u64(uint64_t x);

double mangoldt_i64(int64_t x);

int8_t mobius_u32(uint32_t x);

int8_t mobius_i32(int32_t x);

int8_t mobius_u64(uint64_t x);

int8_t mobius_i64(int64_t x);

bool k_free_u32(uint32_t x, uint32_t k);

bool k_free_i32(int32_t x, int32_t k);

bool k_free_u64(uint64_t x, uint64_t k);

bool k_free_i64(int64_t x, int64_t k);

uint8_t jacobi_u32(uint32_t x, uint32_t n, int8_t *res);

uint8_t jacobi_i32(int32_t x, int32_t n, int8_t *res);

uint8_t jacobi_u64(uint64_t x, uint64_t n, int8_t *res);

uint8_t jacobi_i64(int64_t x, int64_t n, int8_t *res);

uint32_t radical_u32(uint32_t x);

int32_t radical_i32(int32_t x);

uint64_t radical_u64(uint64_t x);

int64_t radical_i64(int64_t x);

uint32_t smooth_u32(uint32_t x);

int32_t smooth_i32(int32_t x);

uint64_t smooth_u64(uint64_t x);

int64_t smooth_i64(int64_t x);

bool is_smooth_u32(uint32_t x, uint32_t b);

bool is_smooth_i32(int32_t x, int32_t b);

bool is_smooth_u64(uint64_t x, uint64_t b);

bool is_smooth_i64(int64_t x, int64_t b);

Vecdat factor_u64(uint64_t x);

Mpzdat mpz_from_string(char *x);

Mpzdat mpz_add(Mpzdat x, Mpzdat y);

Vecdat mpz_product(Vecdat x, Vecdat y);

bool mpz_prime(Vecdat x);

uint64_t trailing_zeros(const Mpzdat *self);

} // extern "C"
