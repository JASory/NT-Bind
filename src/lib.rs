use number_theory::NumberTheory;
use number_theory::Mpz;
use number_theory::Sign;


#[repr(C)]
pub struct Triple(u64,u64,u64);

#[repr(C)]
pub struct Vecdat(*mut u64,usize, usize);

#[repr(C)]
pub struct Mpzdat(*mut u64,usize, usize, bool);



fn fuse(lo: u64, hi: u64) -> u128{
  lo as u128 + ((hi as u128)<<64)
}


#[no_mangle]
pub extern "C" fn rng_32() -> u32{
      u32::rng()
}

#[no_mangle]
pub extern "C" fn rng_64() -> u64{
       u64::rng()
}

#[no_mangle]
pub extern "C" fn is_sprp_u32(x: u32, base: u32) -> bool {
   NumberTheory::is_sprp(&x, &base)
}

#[no_mangle]
pub extern "C" fn is_sprp_i32(x: i32, base: i32) -> bool {
   NumberTheory::is_sprp(&x, &base)
}

#[no_mangle]
pub extern "C" fn is_sprp_u64(x: u64, base: u64) -> bool {
   NumberTheory::is_sprp(&x, &base)
}

#[no_mangle]
pub extern "C" fn is_sprp_i64(x: i64, base: i64) -> bool {
   NumberTheory::is_sprp(&x, &base)
}

#[no_mangle]
pub extern "C" fn is_sprp_u128(xlo: u64,xhi: u64, baselo: u64, basehi: u64) -> bool {
   NumberTheory::is_sprp(&fuse(xlo, xhi), &fuse(baselo, basehi))
}

#[no_mangle]
pub extern "C" fn is_prime_u32(x: u32) -> bool{
    NumberTheory::is_prime(&x)
}

#[no_mangle]
pub extern "C" fn is_prime_i32(x: i32) -> bool{
    NumberTheory::is_prime(&x)
}

#[no_mangle]
pub extern "C" fn is_prime_u64(x: u64) -> bool{
    NumberTheory::is_prime(&x)
}

#[no_mangle]
pub extern "C" fn is_prime_i64(x: i64) -> bool{
    NumberTheory::is_prime(&x)
}


#[no_mangle]
pub extern "C" fn is_prime_u128(lo: u64, hi: u64) -> bool{
      NumberTheory::is_prime(&fuse(lo,hi))
}

#[no_mangle]
pub extern "C" fn is_prime_i128(lo: u64, hi: i64) -> bool{
   NumberTheory::is_prime(&fuse(lo,hi.abs() as u64))
}

#[no_mangle]
pub extern "C" fn pi_u32(x: u32) -> u32{
     NumberTheory::pi(&x)
}

#[no_mangle]
pub extern "C" fn pi_i32(x: i32) -> i32{
     NumberTheory::pi(&x)
}

#[no_mangle]
pub extern "C" fn pi_u64(x: u64) -> u64{
     NumberTheory::pi(&x)
}

#[no_mangle]
pub extern "C" fn pi_i64(x: i64) -> i64{
     NumberTheory::pi(&x)
}

#[no_mangle]
pub extern "C" fn prime_gen_u32(x: u8, res: &mut u32) -> u8 {
   match NumberTheory::prime_gen(x as u32){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}

#[no_mangle]
pub extern "C" fn prime_gen_i32(x: u8, res: &mut i32) -> u8 {
   match NumberTheory::prime_gen(x as u32){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}

#[no_mangle]
pub extern "C" fn prime_gen_u64(x: u8, res: &mut u64) -> u8 {
   match NumberTheory::prime_gen(x as u32){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}

#[no_mangle]
pub extern "C" fn prime_gen_i64(x: u8, res: &mut i64) -> u8 {
   match NumberTheory::prime_gen(x as u32){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}


#[no_mangle]
pub extern "C" fn nth_prime_u32(x: u32, res: &mut u32) -> u8 {
   match NumberTheory::nth_prime(&x){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}

#[no_mangle]
pub extern "C" fn nth_prime_i32(x: i32, res: &mut i32) -> u8 {
   match NumberTheory::nth_prime(&x){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}

#[no_mangle]
pub extern "C" fn nth_prime_u64(x: u64, res: &mut u64) -> u8 {
   match NumberTheory::nth_prime(&x){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}

#[no_mangle]
pub extern "C" fn nth_prime_i64(x: i64, res: &mut i64) -> u8 {
   match NumberTheory::nth_prime(&x){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}

#[no_mangle]
pub extern "C" fn gcd_u32(x: u32, y: u32) -> u32{
    NumberTheory::euclid_gcd(&x,&y)
}

#[no_mangle]
pub extern "C" fn gcd_i32(x: i32, y: i32) -> i32{
    NumberTheory::euclid_gcd(&x,&y)
}


#[no_mangle]
pub extern "C" fn gcd_u64(x: u64, y: u64) -> u64{
     NumberTheory::euclid_gcd(&x, &y)
}

#[no_mangle]
pub extern "C" fn gcd_i64(x: i64, y: i64) -> i64{
     NumberTheory::euclid_gcd(&x, &y)
}


#[no_mangle]
pub extern "C" fn extended_gcd_u32(x: u32, y: u32, x_inv: &mut u32, y_inv: &mut u32) -> u32{
   let (g, x_i, y_i) = NumberTheory::extended_gcd(&x, &y);
   *x_inv = x_i;
   *y_inv = y_i; 
    g
}

#[no_mangle]
pub extern "C" fn extended_gcd_i32(x: i32, y: i32, x_inv: &mut i32, y_inv: &mut i32)-> i32{
   let (g, x_i, y_i) = NumberTheory::extended_gcd(&x, &y);
   *x_inv = x_i;
   *y_inv = y_i;
    g 
}

#[no_mangle]
pub extern "C" fn extended_gcd_u64(x: u64, y: u64, x_inv: &mut u64, y_inv: &mut u64)-> u64{
   let (g, x_i, y_i) = NumberTheory::extended_gcd(&x, &y);
   *x_inv = x_i;
   *y_inv = y_i; 
   g
}

#[no_mangle]
pub extern "C" fn extended_gcd_i64(x: i64, y: i64, x_inv: &mut i64, y_inv: &mut i64)-> i64{
   let (g, x_i, y_i) = NumberTheory::extended_gcd(&x, &y);
   *x_inv = x_i;
   *y_inv = y_i; 
    g
}

#[no_mangle]
pub extern "C" fn lcm_u32(x: u32, y: u32, res: &mut u32) -> u8 {
    match NumberTheory::checked_lcm(&x,&y){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}

#[no_mangle]
pub extern "C" fn lcm_i32(x: i32, y: i32, res: &mut i32) -> u8 {
    match NumberTheory::checked_lcm(&x,&y){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}


#[no_mangle]
pub extern "C" fn lcm_u64(x: u64, y: u64, res: &mut u64) -> u8 {
    match NumberTheory::checked_lcm(&x,&y){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}

#[no_mangle]
pub extern "C" fn lcm_i64(x: i64, y: i64, res: &mut i64) -> u8 {
    match NumberTheory::checked_lcm(&x,&y){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
   }
}


#[no_mangle]
pub extern "C" fn euler_totient_u32(x: u32) -> u32{
     NumberTheory::euler_totient(&x)
}

#[no_mangle]
pub extern "C" fn euler_totient_i32(x: i32) -> i32{
     NumberTheory::euler_totient(&x)
}


#[no_mangle]
pub extern "C" fn euler_totient_u64(x: u64) -> u64{
     NumberTheory::euler_totient(&x)
}

#[no_mangle]
pub extern "C" fn euler_totient_i64(x: i64) -> i64{
     NumberTheory::euler_totient(&x)
}


#[no_mangle]
pub extern "C" fn jordan_totient_u32(x: u32, k: u32, res: &mut u32) -> u8 {
      match NumberTheory::jordan_totient(&x,&k){
       Some(z) => {*res = z; return 0u8}
       None => return 1u8,
      }
}

#[no_mangle]
pub extern "C" fn jordan_totient_i32(x: i32, k: i32, res: &mut i32) -> u8 {
      match NumberTheory::jordan_totient(&x,&k){
       Some(z) => {*res = z; return 0u8}
       None => return 1u8,
      }
}

#[no_mangle]
pub extern "C" fn jordan_totient_u64(x: u64, k: u64, res: &mut u64) -> u8 {
      match NumberTheory::jordan_totient(&x,&k){
       Some(z) => {*res = z; return 0u8}
       None => return 1u8,
      }
}

#[no_mangle]
pub extern "C" fn jordan_totient_i64(x: i64, k: i64, res: &mut i64) -> u8 {
      match NumberTheory::jordan_totient(&x,&k){
       Some(z) => {*res = z; return 0u8}
       None => return 1u8,
      }
}


#[no_mangle]
pub extern "C" fn carmichael_totient_u32(x: u32) -> u32{
     NumberTheory::carmichael_totient(&x)
}

#[no_mangle]
pub extern "C" fn carmichael_totient_i32(x: i32) -> i32{
     NumberTheory::carmichael_totient(&x)
}


#[no_mangle]
pub extern "C" fn carmichael_totient_u64(x: u64) -> u64{
     NumberTheory::carmichael_totient(&x)
}

#[no_mangle]
pub extern "C" fn carmichael_totient_i64(x: i64) -> i64{
     NumberTheory::carmichael_totient(&x)
}


#[no_mangle]
pub extern "C" fn dedekind_psi_u32(x: u32, k: u32, res: &mut u32) -> u8 {
   	 match NumberTheory::dedekind_psi(&x,&k){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
    }
}

#[no_mangle]
pub extern "C" fn dedekind_psi_i32(x: i32, k: i32, res: &mut i32) -> u8 {
   	 match NumberTheory::dedekind_psi(&x,&k){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
    }
}

#[no_mangle]
pub extern "C" fn dedekind_psi_u64(x: u64, k: u64, res: &mut u64) -> u8 {
   	 match NumberTheory::dedekind_psi(&x,&k){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
    }
}

#[no_mangle]
pub extern "C" fn dedekind_psi_i64(x: i64, k: i64, res: &mut i64) -> u8 {
   	 match NumberTheory::dedekind_psi(&x,&k){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8,
    }
}



#[no_mangle]
pub extern "C" fn derivative_u32(x: u32, res: &mut u32) -> u8 {
	 match NumberTheory::derivative(&x){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8
     }
}

#[no_mangle]
pub extern "C" fn derivative_i32(x: i32, res: &mut i32) -> u8 {
	 match NumberTheory::derivative(&x){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8
     }
}

#[no_mangle]
pub extern "C" fn derivative_u64(x: u64, res: &mut u64) -> u8 {
	 match NumberTheory::derivative(&x){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8
     }
}

#[no_mangle]
pub extern "C" fn derivative_i64(x: i64, res: &mut i64) -> u8 {
	 match NumberTheory::derivative(&x){
      Some(z) => {*res = z; return 0u8}
      None => return 1u8
     }
}



#[no_mangle]
pub extern "C" fn product_residue_u32(x: u32,y:u32, n: u32) -> u32 {
   NumberTheory::product_residue(&x, &y, &n)
}

#[no_mangle]
pub extern "C" fn product_residue_i32(x: i32,y:i32, n: i32) -> i32 {
   NumberTheory::product_residue(&x, &y, &n)
}

#[no_mangle]
pub extern "C" fn product_residue_u64(x: u64,y:u64, n: u64) -> u64 {
   NumberTheory::product_residue(&x, &y, &n)
}

#[no_mangle]
pub extern "C" fn product_residue_i64(x: i64,y:i64, n: i64) -> i64 {
   NumberTheory::product_residue(&x, &y, &n)
}


#[no_mangle]
pub extern "C" fn quadratic_residue_u32(x: u32, n: u32) -> u32 {
   NumberTheory::quadratic_residue(&x, &n)
}

#[no_mangle]
pub extern "C" fn quadratic_residue_i32(x: i32, n: i32) -> i32 {
   NumberTheory::quadratic_residue(&x, &n)
}


#[no_mangle]
pub extern "C" fn quadratic_residue_u64(x: u64, n: u64) -> u64 {
   NumberTheory::quadratic_residue(&x, &n)
}

#[no_mangle]
pub extern "C" fn quadratic_residue_i64(x: i64, n: i64) -> i64 {
   NumberTheory::quadratic_residue(&x, &n)
}

#[no_mangle]
pub extern "C" fn exp_residue_u32(x: u32, y: u32, n: u32, res: &mut u32) -> u8 {
	 match NumberTheory::checked_exp_residue(&x,&y, &n){
       Some(z) => {*res = z; return 0u8}
       None => return 1u8,
     }
}

#[no_mangle]
pub extern "C" fn exp_residue_i32(x: i32, y: i32, n: i32, res: &mut i32) -> u8 {
	 match NumberTheory::checked_exp_residue(&x,&y, &n){
       Some(z) => {*res = z; return 0u8}
       None => return 1u8,
     }
}


#[no_mangle]
pub extern "C" fn exp_residue_u64(x: u64, y: u64, n: u64, res: &mut u64) -> u8 {
	 match NumberTheory::checked_exp_residue(&x,&y, &n){
       Some(z) => {*res = z; return 0u8}
       None => return 1u8,
     }
}

#[no_mangle]
pub extern "C" fn exp_residue_i64(x: i64, y: i64, n: i64, res: &mut i64) -> u8 {
	 match NumberTheory::checked_exp_residue(&x,&y, &n){
       Some(z) => {*res = z; return 0u8}
       None => return 1u8,
     }
}


#[no_mangle]
pub extern "C" fn legendre_u32(x: u32, n: u32,res: &mut i8 ) -> u8 {
	match NumberTheory::checked_legendre(&x,&n){
     Some(z) => {*res = z; return 0u8}
     None => return 1u8
    }
}

#[no_mangle]
pub extern "C" fn legendre_i32(x: i32, n: i32,res: &mut i8 ) -> u8 {
	match NumberTheory::checked_legendre(&x,&n){
     Some(z) => {*res = z; return 0u8}
     None => return 1u8
    }
}

#[no_mangle]
pub extern "C" fn legendre_u64(x: u64, n: u64,res: &mut i8 ) -> u8 {
	match NumberTheory::checked_legendre(&x,&n){
     Some(z) => {*res = z; return 0u8}
     None => return 1u8
    }
}

#[no_mangle]
pub extern "C" fn legendre_i64(x: i64, n: i64,res: &mut i8 ) -> u8 {
	match NumberTheory::checked_legendre(&x,&n){
     Some(z) => {*res = z; return 0u8}
     None => return 1u8
    }
}

#[no_mangle]
pub extern "C" fn liouville_u32(x: u32) -> i8 {
   NumberTheory::liouville(&x)
}

#[no_mangle]
pub extern "C" fn liouville_i32(x: i32) -> i8 {
   NumberTheory::liouville(&x)
}

#[no_mangle]
pub extern "C" fn liouville_u64(x: u64) -> i8 {
   NumberTheory::liouville(&x)
}

#[no_mangle]
pub extern "C" fn liouville_i64(x: i64) -> i8 {
   NumberTheory::liouville(&x)
}


#[no_mangle]
pub extern "C" fn mangoldt_u32(x: u32) -> f64 {
   NumberTheory::mangoldt(&x)
}

#[no_mangle]
pub extern "C" fn mangoldt_i32(x: i32) -> f64 {
   NumberTheory::mangoldt(&x)
}


#[no_mangle]
pub extern "C" fn mangoldt_u64(x: u64) -> f64 {
   NumberTheory::mangoldt(&x)
}

#[no_mangle]
pub extern "C" fn mangoldt_i64(x: i64) -> f64 {
   NumberTheory::mangoldt(&x)
}


#[no_mangle]
pub extern "C" fn mobius_u32(x: u32) -> i8 {
   NumberTheory::mobius(&x)
}

#[no_mangle]
pub extern "C" fn mobius_i32(x: i32) -> i8 {
   NumberTheory::mobius(&x)
}


#[no_mangle]
pub extern "C" fn mobius_u64(x: u64) -> i8 {
   NumberTheory::mobius(&x)
}

#[no_mangle]
pub extern "C" fn mobius_i64(x: i64) -> i8 {
   NumberTheory::mobius(&x)
}


#[no_mangle]
pub extern "C" fn k_free_u32(x: u32, k: u32) -> bool{
   NumberTheory::k_free(&x,&k)
}

#[no_mangle]
pub extern "C" fn k_free_i32(x: i32, k: i32) -> bool{
   NumberTheory::k_free(&x,&k)
}


#[no_mangle]
pub extern "C" fn k_free_u64(x: u64, k: u64) -> bool{
   NumberTheory::k_free(&x,&k)
}

#[no_mangle]
pub extern "C" fn k_free_i64(x: i64, k: i64) -> bool{
   NumberTheory::k_free(&x,&k)
}


#[no_mangle]
pub extern "C" fn jacobi_u32(x: u32, n: u32, res: &mut i8) -> u8 {
  	match NumberTheory::checked_jacobi(&x,&n){
     Some(z) => {*res = z; return 0u8}
     None => return 1u8,
    }
}

#[no_mangle]
pub extern "C" fn jacobi_i32(x: i32, n: i32, res: &mut i8) -> u8 {
  	match NumberTheory::checked_jacobi(&x,&n){
     Some(z) => {*res = z; return 0u8}
     None => return 1u8,
    }
}

#[no_mangle]
pub extern "C" fn jacobi_u64(x: u64, n: u64, res: &mut i8) -> u8 {
  	match NumberTheory::checked_jacobi(&x,&n){
     Some(z) => {*res = z; return 0u8}
     None => return 1u8,
    }
}

#[no_mangle]
pub extern "C" fn jacobi_i64(x: i64, n: i64, res: &mut i8) -> u8 {
  	match NumberTheory::checked_jacobi(&x,&n){
     Some(z) => {*res = z; return 0u8}
     None => return 1u8,
    }
}


#[no_mangle]
pub extern "C" fn radical_u32(x: u32) -> u32{
       NumberTheory::radical(&x)
}

#[no_mangle]
pub extern "C" fn radical_i32(x: i32) -> i32{
       NumberTheory::radical(&x)
}

#[no_mangle]
pub extern "C" fn radical_u64(x: u64) -> u64{
       NumberTheory::radical(&x)
}

#[no_mangle]
pub extern "C" fn radical_i64(x: i64) -> i64{
       NumberTheory::radical(&x)
}

#[no_mangle]
pub extern "C" fn smooth_u32(x: u32)-> u32{
         NumberTheory::smooth(&x)
}

#[no_mangle]
pub extern "C" fn smooth_i32(x: i32)-> i32{
         NumberTheory::smooth(&x)
}

#[no_mangle]
pub extern "C" fn smooth_u64(x: u64)-> u64{
         NumberTheory::smooth(&x)
}

#[no_mangle]
pub extern "C" fn smooth_i64(x: i64)-> i64{
         NumberTheory::smooth(&x)
}

#[no_mangle]
pub extern "C" fn is_smooth_u32(x: u32, b: u32) -> bool {
   NumberTheory::is_smooth(&x, &b)
}

#[no_mangle]
pub extern "C" fn is_smooth_i32(x: i32, b: i32) -> bool {
   NumberTheory::is_smooth(&x, &b)
}

#[no_mangle]
pub extern "C" fn is_smooth_u64(x: u64, b: u64) -> bool {
   NumberTheory::is_smooth(&x, &b)
}

#[no_mangle]
pub extern "C" fn is_smooth_i64(x: i64, b: i64) -> bool {
   NumberTheory::is_smooth(&x, &b)
}

#[no_mangle]
pub extern "C" fn factor_u64(x: u64) -> Vecdat {
  let mut fctr = x.factor();
  
  //let mut veccy = p.to_vector();
  //let mut fctr = std::mem::ManuallyDrop::new(fctr);
  
  Vecdat(fctr[..].as_mut_ptr(),fctr.len(), fctr.capacity())
  
}

#[no_mangle]
pub extern "C" fn mpz_from_string(x: * mut std::os::raw::c_char)-> Mpzdat{
  let input = unsafe {std::ffi::CString::from_raw(x).into_string().unwrap()};
  let p = Mpz::from_string(&input).unwrap();
  
  let mut sign = true; 
  if p.is_positive(){
    sign = false
  }
  let veccy = p.to_vector();
  let mut veccy = std::mem::ManuallyDrop::new(veccy);
  
  Mpzdat(veccy[..].as_mut_ptr(),veccy.len(), veccy.capacity(), sign)
}

#[no_mangle]
pub extern "C" fn mpz_add(x: Mpzdat, y: Mpzdat) -> Mpzdat{
  
   let xvec = unsafe {Vec::from_raw_parts(x.0,x.1,x.2)};
   let yvec = unsafe {Vec::from_raw_parts(y.0,y.1,y.2)};
   
   let mut xsign = Sign::Negative;
   let mut ysign = Sign::Negative;
   
   if x.3{
     xsign = Sign::Negative;
   }
   if y.3{
    ysign = Sign::Negative;
   }
   
   let xmpz = Mpz::new(xsign,xvec);
   let ympz = Mpz::new(ysign,yvec);
   
   let addend = xmpz.ref_addition(&ympz);
   
   let mut sign = true; 
   if addend.is_positive(){
     sign = false
   }
   
   let mut veccy = addend.to_vector();
  
    Mpzdat(veccy[..].as_mut_ptr(),veccy.len(), veccy.capacity(), sign)
}


#[no_mangle]
pub extern "C" fn mpz_product(x: Vecdat, y: Vecdat) -> Vecdat{
  
   let xvec = unsafe {Vec::from_raw_parts(x.0,x.1,x.2)};
   let yvec = unsafe {Vec::from_raw_parts(y.0,y.1,y.2)};
   let xmpz = Mpz::u_new(xvec);
   let ympz = Mpz::u_new(yvec);
   let mut veccy = xmpz.ref_product(&ympz).to_vector();
  
    Vecdat(veccy[..].as_mut_ptr(),veccy.len(), veccy.capacity())
}


#[no_mangle]
pub extern "C" fn mpz_prime(x: Vecdat) -> bool{
     let xvec = unsafe {Vec::from_raw_parts(x.0,x.1,x.2)};

  let p = Mpz::u_new(xvec);
  Mpz::is_prime(&p)
}

impl Mpzdat{
 #[no_mangle]
pub extern "C" fn trailing_zeros(&self) -> u64{
   let xvec = unsafe {Vec::from_raw_parts(self.0,self.1,self.2)};

  let p = Mpz::u_new(xvec);
  p.trailing_zeros()
}

}

/*
#[no_mangle]
pub extern "C" fn trailing_zeros(x: Mpzdat) -> u64{
  let mut xvec = unsafe {Vec::from_raw_parts(x.0,x.1,x.2)};

  let p = Mpz::u_new(xvec);
  p::trailing_zeros()
}

#[no_mangle]
pub extern "C" fn bit_length(x: Mpzdat) -> u64{

}

#[no_mangle]
pub extern "C" fn ln(x: Mpzdat) -> f64{

}

#[no_mangle]
pub extern "C" fn leading_zeros(x: Mpzdat) -> u64{

}


*/

