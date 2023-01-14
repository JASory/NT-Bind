
 MODULE NumberTheory
 
 USE, INTRINSIC :: iso_c_binding
 IMPLICIT NONE

 INTERFACE IS_SPRP

  Logical(Kind = C_Bool) function is_sprp_32(x,y) Bind(C, name = "is_sprp_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,y 
 End function is_sprp_32

 Logical(Kind = C_Bool) function is_sprp_64(x,y) Bind(C, name = "is_sprp_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,y
 End function is_sprp_64 

 End INTERFACE IS_SPRP


 INTERFACE IS_PRIME
 
  Logical(Kind=C_Bool) function is_prime_32(x) Bind(C, name="is_prime_i32")
    use, intrinsic :: iso_c_binding
    Integer(Kind=C_INT32_T), Intent(in), Value :: x
 End function is_prime_32

 Logical(Kind = C_Bool) function is_prime_64(x) Bind(C, name = "is_prime_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind=C_INT64_T), Intent(in), Value :: x
 End function is_prime_64
 
 END INTERFACE IS_PRIME


  INTERFACE PRIME_GEN

 Logical(Kind = C_Bool) function prime_gen_32(x,res) Bind(C, name = "prime_gen_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x
   Integer(Kind = C_INT32_T), Intent(out) :: res
 End function prime_gen_32 
 
 Logical(Kind = C_Bool) function prime_gen_64(x,res) Bind(C, name = "prime_gen_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x
   Integer(Kind = C_INT64_T), Intent(out) :: res
 End function prime_gen_64 

  END INTERFACE PRIME_GEN


  INTERFACE PRIMECOUNT
  
 Integer(Kind = 4) function pi_32(x) Bind(C, name = "pi_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind=C_INT32_T), Intent(in), Value :: x
 End function pi_32

 Integer(Kind = 8) function pi_64(x) Bind(C, name = "pi_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind=C_INT64_T), Intent(in), Value :: x
 End function pi_64

  END INTERFACE PRIMECOUNT


  INTERFACE NTH_PRIME

   Logical(Kind = C_Bool) function nth_prime_32(x,res) Bind(C, name = "nth_prime_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x
   Integer(Kind = C_INT32_T), Intent(out) :: res
 End function nth_prime_32 
 
 Logical(Kind = C_Bool) function nth_prime_64(x,res) Bind(C, name = "nth_prime_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x
   Integer(Kind = C_INT64_T), Intent(out) :: res
 End function nth_prime_64

  END INTERFACE NTH_PRIME


  INTERFACE GCD

 Integer(Kind = 4) function gcd_32(x,y) Bind(C,name = "gcd_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,y
 End function gcd_32 

 Integer(Kind = 8) function gcd_64(x,y) Bind(C,name = "gcd_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,y
 End function gcd_64 

  END INTERFACE GCD


  INTERFACE EXTENDED_GCD

 Integer(Kind = 4) function extended_gcd_32(x,y, x_inv, y_inv) Bind(C,name = "extended_gcd_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,y
   Integer(Kind = C_INT32_T), Intent(out) :: x_inv, y_inv
 End function extended_gcd_32 
 
 Integer(Kind = 8) function extended_gcd_64(x,y, x_inv, y_inv) Bind(C,name = "extended_gcd_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,y
   Integer(Kind = C_INT64_T), Intent(out) :: x_inv, y_inv
 End function extended_gcd_64 
  
  END INTERFACE EXTENDED_GCD


  INTERFACE LCM
  
 Logical(Kind = C_Bool) function lcm_32(x,y,res) Bind(C,name = "lcm_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,y
   Integer(Kind = C_INT32_T), Intent(Out) :: res
 End function lcm_32 

 Logical(Kind = C_Bool) function lcm_64(x,y,res) Bind(C,name = "lcm_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,y
   Integer(Kind = C_INT64_T), Intent(Out) :: res
 End function lcm_64 

  END INTERFACE LCM


  INTERFACE EULER_TOTIENT
  
  Integer(Kind = 4) function euler_totient_32(x) Bind(C,name = "euler_totient_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in),Value :: x
 End function euler_totient_32 

 Integer(Kind = 8) function euler_totient_64(x) Bind(C,name = "euler_totient_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in),Value :: x
 End function euler_totient_64  

  END INTERFACE EULER_TOTIENT


  INTERFACE JORDAN_TOTIENT
  
 Logical(Kind = C_Bool) function jordan_totient_32(x,k,res) Bind(C,name = "jordan_totient_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,k
   Integer(Kind = C_INT32_T), Intent(Out) :: res
 End function jordan_totient_32 

 Logical(Kind = C_Bool) function jordan_totient_64(x,k,res) Bind(C,name = "jordan_totient_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,k
   Integer(Kind = C_INT64_T), Intent(Out) :: res
 End function jordan_totient_64

  END INTERFACE JORDAN_TOTIENT


  INTERFACE CARMICHAEL_TOTIENT

 Integer(Kind = 4) function carmichael_32(x) Bind(C,name = "carmichael_totient_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x
 End function carmichael_32  

 Integer(Kind = 8) function carmichael_64(x) Bind(C,name = "carmichael_totient_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x
 End function carmichael_64 
 
  
  END INTERFACE CARMICHAEL_TOTIENT


  INTERFACE DEDEKIND_PSI
  
 Logical(Kind = C_Bool) function dedekind_psi_32(x,k,res) Bind(C,name = "dedekind_psi_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,k
   Integer(Kind = C_INT32_T), Intent(Out) :: res
 End function dedekind_psi_32
 
 Logical(Kind = C_Bool) function dedekind_psi_64(x,k,res) Bind(C,name = "dedekind_psi_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,k
   Integer(Kind = C_INT64_T), Intent(Out) :: res
 End function dedekind_psi_64

  END INTERFACE DEDEKIND_PSI


  INTERFACE DERIVATIVE
  
 Logical(Kind = C_Bool) function derivative_32(x,res) Bind(C,name = "derivative_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x
   Integer(Kind = C_INT32_T), Intent(Out) :: res
 End function derivative_32

 Logical(Kind = C_Bool) function derivative_64(x,res) Bind(C,name = "derivative_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x
   Integer(Kind = C_INT64_T), Intent(Out) :: res
 End function derivative_64

  END INTERFACE DERIVATIVE


  INTERFACE PRODUCT_RESIDUE
  
 Integer(Kind = 4) function product_residue_32(x,y,n) Bind(C,name = "product_residue_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,y,n
 end function product_residue_32
 
 Integer(Kind = 4) function product_residue_64(x,y,n) Bind(C,name = "product_residue_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,y,n
 end function product_residue_64

  END INTERFACE PRODUCT_RESIDUE


  INTERFACE QUADRATIC_RESIDUE
  
 Integer(Kind = 4) function quadratic_residue_32(x,y,n) Bind(C,name = "quadratic_residue_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,n
 end function quadratic_residue_32

 Integer(Kind =8) function quadratic_residue_64(x,n) Bind(C,name ="quadratic_residue_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,n
 end function quadratic_residue_64

  END INTERFACE QUADRATIC_RESIDUE


  INTERFACE EXP_RESIDUE
  
 Logical(Kind = C_Bool) function exp_residue_32(x,y,n,res) Bind(C,name="exp_residue_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,y,n
   Integer(Kind = C_INT32_T), Intent(out) :: res
  end function exp_residue_32
  
 Logical(Kind = C_Bool) function exp_residue_64(x,y,n,res) Bind(C,name="exp_residue_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,y,n
   Integer(Kind = C_INT64_T), Intent(out) :: res
  end function exp_residue_64

  END INTERFACE EXP_RESIDUE


  INTERFACE LEGENDRE
  
  Logical(Kind = C_Bool) function legendre_32(x,n,res) Bind(C,name="legendre_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,n
   Integer(Kind = C_INT8_T),Intent(out) :: res
  end function legendre_32
 
 Logical(Kind = C_Bool) function legendre_64(x,n,res) Bind(C,name="legendre_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,n
   Integer(Kind = C_INT8_T),Intent(out) :: res
  end function legendre_64

  END INTERFACE LEGENDRE


  INTERFACE LIOUVILLE
  
 Integer(Kind = C_INT8_T) function liouville_32(x) Bind(C,name = "liouville_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x
 End function liouville_32 
 
 Integer(Kind = C_INT8_T) function liouville_64(x) Bind(C,name = "liouville_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x
 End function liouville_64 

  END INTERFACE LIOUVILLE


  INTERFACE MANGOLDT
  
 Real(Kind = 16) function mangoldt_32(x) Bind(C,name = "mangoldt_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x
 End function mangoldt_32 
 
 Real(Kind = 16) function mangoldt_64(x) Bind(C,name = "mangoldt_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x
 End function mangoldt_64

  END INTERFACE MANGOLDT


  INTERFACE MOBIUS
  
 Integer(Kind = C_INT8_T) function mobius_32(x) Bind(C,name = "mobius_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x
 End function mobius_32       
 
 Integer(Kind = C_INT8_T) function mobius_64(x) Bind(C,name = "mobius_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x
 End function mobius_64 

  END INTERFACE MOBIUS


  INTERFACE K_FREE
  
 Logical(Kind = C_Bool) function k_free_32(x,k) Bind(C,name = "k_free_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,k
 End function k_free_32
   
 Logical(Kind = C_Bool) function k_free_64(x,k) Bind(C,name = "k_free_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,k
 End function k_free_64

  END INTERFACE K_FREE


  INTERFACE JACOBI
  
 Logical(Kind = C_Bool) function jacobi_32(x,k,res) Bind(C,name = "jacobi_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,k
   Integer(Kind = C_INT8_T),Intent(out) :: res
 End function jacobi_32
   
 Logical(Kind = C_Bool) function jacobi_64(x,k,res) Bind(C,name = "jacobi_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,k
   Integer(Kind = C_INT8_T),Intent(out) :: res
 End function jacobi_64

  END INTERFACE JACOBI


  INTERFACE RADICAL
  
 Integer(Kind = 4) function radical_32(x) Bind(C,name = "radical_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x
 End function radical_32
 
 Integer(Kind = 8) function radical_64(x) Bind(C,name = "radical_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x
 End function radical_64       

  END INTERFACE RADICAL


  INTERFACE SMOOTH
  
 Integer(Kind = 4) function smooth_32(x) Bind(C,name = "smooth_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x
 End function smooth_32       
 
 Integer(Kind = 8) function smooth_64(x) Bind(C,name = "smooth_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x
 End function smooth_64  

  END INTERFACE SMOOTH


  INTERFACE IS_SMOOTH
  
 Logical(Kind = C_Bool) function is_smooth_32(x,y) Bind(C,name = "is_smooth_i32")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT32_T), Intent(in), Value :: x,y
 End function is_smooth_32 
 
 Logical(Kind = C_Bool) function is_smooth_64(x,y) Bind(C,name = "is_smooth_i64")
   use, intrinsic :: iso_c_binding
   Integer(Kind = C_INT64_T), Intent(in), Value :: x,y
 End function is_smooth_64 

  END INTERFACE IS_SMOOTH

  

   INTERFACE
   
 Integer(Kind=4) function rng_32() Bind(C)
 End function rng_32  
 
 Integer(Kind=8) function rng_64() Bind(C)
 End function rng_64  

  END INTERFACE 


  END MODULE NumberTheory
