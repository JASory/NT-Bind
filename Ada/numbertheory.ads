with Interfaces.C; use Interfaces.C;


package numbertheory is 

--function rng_u32() return unsigned 
--   with 
--     Import => True,
--     Convention => C;
     
--function rng_u64() return unsigned_long 
--   with 
--     Import => True,
--     Convention => C; 

function is_sprp_u32(x,y: unsigned) return unsigned_char
  with Import => True,
       Convention => C;
       
function is_sprp_i32(x,y: int) return unsigned_char
  with Import => True,
       Convention => C;                   

function is_sprp_u64(x,y: unsigned_long) return unsigned_char
  with Import => True,
       Convention => C;      

function is_sprp_i64(x,y: long) return unsigned_char
  with Import => True,
       Convention => C;      
       
function is_prime_u32(x: unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C;

function is_prime_i32(x: int) return unsigned_char 
   with 
     Import => True,
     Convention => C;

function is_prime_u64(x: unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C;
     
function is_prime_i64(x: long) return unsigned_char 
   with 
     Import => True,
     Convention => C;       

function pi_u32(x: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C;

function pi_i32(x: int) return int 
   with 
     Import => True,
     Convention => C;

function pi_u64(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C;
     
function pi_i64(x: long) return long 
   with 
     Import => True,
     Convention => C;       

function prime_gen_u32(x: unsigned_char; res: out unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C;    

function prime_gen_i32(x: unsigned_char; res: out int) return unsigned_char 
   with 
     Import => True,
     Convention => C;    

function prime_gen_u64(x: unsigned_char; res: out unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C;    

function prime_gen_i64(x: unsigned_char; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C;      

function nth_prime_u32(x: unsigned; res: out unsigned) return unsigned_char
   with 
     Import => True,
     Convention => C;    

function nth_prime_i32(x: int; res: out int) return unsigned_char 
   with 
     Import => True,
     Convention => C;    

function nth_prime_u64(x: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C;    

function nth_prime_i64(x: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C;
     
function gcd_u32(x,y: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C;     
     
function gcd_i32(x,y: int) return int 
   with 
     Import => True,
     Convention => C;         

function gcd_u64(x,y: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C;

function gcd_i64(x,y: long) return long 
   with 
     Import => True,
     Convention => C;
              
function gcd_u32(x,y: unsigned; x_inv,y_inv: out unsigned) return unsigned 
   with 
     Import => True,
     Convention => C;     
     
function gcd_i32(x,y: int; x_inv,y_inv: out int) return int 
   with 
     Import => True,
     Convention => C;         

function gcd_u64(x,y: unsigned_long; x_inv,y_inv: out unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C;

function gcd_i64(x,y: long; x_inv,y_inv: out long) return long 
   with 
     Import => True,
     Convention => C;

function lcm_u32(x,y: unsigned; res: out unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C;     
     
function lcm_i32(x,y: int; res: out int) return unsigned_char
   with 
     Import => True,
     Convention => C;         

function lcm_u64(x,y: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C;

function lcm_i64(x,y: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C;

function euler_totient_u32(x: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C;

function euler_totient_i32(x: int) return int 
   with 
     Import => True,
     Convention => C;

function euler_totient_u64(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C;
     
function euler_totient_i64(x: long) return long 
   with 
     Import => True,
     Convention => C;       

function carmichael_totient_u32(x: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C;

function carmichael_totient_i32(x: int) return int 
   with 
     Import => True,
     Convention => C;

function carmichael_totient_u64(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C;
     
function carmichael_totient_i64(x: long) return long 
   with 
     Import => True,
     Convention => C;      

function jordan_totient_u32(x,y: unsigned; res: out unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C;     
     
function jordan_totient_i32(x,k: int; res: out int) return unsigned_char
   with 
     Import => True,
     Convention => C;         

function jordan_totient_u64(x,k: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C;

function jordan_totient_i64(x,k: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C;         
     
function dedekind_psi_u32(x,y: unsigned; res: out unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C;     
     
function dedekind_psi_i32(x,k: int; res: out int) return unsigned_char
   with 
     Import => True,
     Convention => C;         

function dedekind_psi_u64(x,k: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C;

function dedekind_psi_i64(x,k: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C;   
     
function derivative_u32(x: unsigned; res: out unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C;     
     
function derivative_i32(x: int; res: out int) return unsigned_char
   with 
     Import => True,
     Convention => C;         

function derivative_u64(x: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C;

function derivative_i64(x: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C;
     
function product_residue_u32(x,y,n: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C;

function product_residue_i32(x,y,n: int) return int 
   with 
     Import => True,
     Convention => C;

function product_residue_u64(x,y,n: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C;
     
function product_residue_i64(x,y,n: long) return long 
   with 
     Import => True,
     Convention => C; 
      
     
function quadratic_residue_u32(x,n: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C;

function quadratic_residue_i32(x,n: int) return int 
   with 
     Import => True,
     Convention => C;

function quadratic_residue_u64(x,n: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C;
     
function quadratic_residue_i64(x,n: long) return long 
   with 
     Import => True,
     Convention => C;                                                                        

function exp_residue_u32(x,y,n: unsigned; res: out unsigned) return unsigned_char
   with 
     Import => True,
     Convention => C;
     
function exp_residue_i32(x,y,n: int; res: out int) return unsigned_char
   with 
     Import => True,
     Convention => C;
     

function exp_residue_u64(x,y,n: unsigned_long; res: out unsigned_long) return unsigned_char
   with 
     Import => True,
     Convention => C;

function exp_residue_i64(x,y,n: long; res: out long) return unsigned_char
   with 
     Import => True,
     Convention => C;

function legendre_u32(x,n: unsigned; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C;
     
function legendre_i32(x,n: int; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C;
     

function legendre_u64(x,n: unsigned_long; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C;

function legendre_i64(x,n: long; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C;
     
function liouville_u32(x: unsigned) return char
   with 
     Import => True,
     Convention => C;     

function liouville_i32(x: int) return char
   with 
     Import => True,
     Convention => C;

function liouville_u64(x: unsigned_long) return char
   with 
     Import => True,
     Convention => C;

function liouville_i64(x: long) return char
   with 
     Import => True,
     Convention => C;
     
function mangoldt_u32(x: unsigned) return Float
   with 
     Import => True,
     Convention => C;     

function mangoldt_i32(x: int) return Float
   with 
     Import => True,
     Convention => C;

function mangoldt_u64(x: unsigned_long) return Float
   with 
     Import => True,
     Convention => C;

function mangoldt_i64(x: long) return Float
   with 
     Import => True,
     Convention => C;     

function mobius_u32(x: unsigned) return char
   with 
     Import => True,
     Convention => C;     

function mobius_i32(x: int) return char
   with 
     Import => True,
     Convention => C;

function mobius_u64(x: unsigned_long) return char
   with 
     Import => True,
     Convention => C;

function mobius_i64(x: long) return char
   with 
     Import => True,
     Convention => C;
  
function k_free_u32(x,k: unsigned) return unsigned_char
   with 
     Import => True,
     Convention => C;     

function k_free_i32(x,k: int) return unsigned_char
   with 
     Import => True,
     Convention => C;

function k_free_u64(x,k: unsigned_long) return unsigned_char
   with 
     Import => True,
     Convention => C;

function k_free_i64(x,k: long) return unsigned_char
   with 
     Import => True,
     Convention => C;   
     
function jacobi_u32(x,n: unsigned; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C;
     
function jacobi_i32(x,n: int; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C;
     

function jacobi_u64(x,n: unsigned_long; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C;

function jacobi_i64(x,n: long; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C;     
     
function radical_u32(x: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C;

function radical_i32(x: int) return int 
   with 
     Import => True,
     Convention => C;

function radical_u64(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C;
     
function radical_i64(x: long) return long 
   with 
     Import => True,
     Convention => C;         
   
function smooth_u32(x: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C;

function smooth_i32(x: int) return int 
   with 
     Import => True,
     Convention => C;

function smooth_u64(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C;
     
function smooth_i64(x: long) return long 
   with 
     Import => True,
     Convention => C;
     
function is_smooth_u32(x,y: unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C;

function is_smooth_i32(x,y: int) return unsigned_char
   with 
     Import => True,
     Convention => C;

function is_smooth_u64(x,y: unsigned_long) return unsigned_char
   with 
     Import => True,
     Convention => C;
     
function is_smooth_i64(x,y: long) return unsigned_char
   with 
     Import => True,
     Convention => C;     
                 
end numbertheory;
