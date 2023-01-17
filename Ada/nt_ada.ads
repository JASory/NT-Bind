with Interfaces.C; use Interfaces.C;


package NT_Ada is 

private 
function rng_u32a return unsigned 
   with 
     Import => True,
     Convention => C,
     External_Name => "rng_u32";
          
function rng_u64a return unsigned_long  
   with 
     Import => True,
     Convention => C, 
     External_Name => "rng_u64";

function is_sprp_u32a(x,y: unsigned) return unsigned_char
  with Import => True,
       Convention => C,
       External_Name => "is_sprp_u32";
       
function is_sprp_i32a(x,y: int) return unsigned_char
  with Import => True,
       Convention => C,                   
       External_Name => "is_sprp_i32";
     
function is_sprp_u64a(x,y: unsigned_long) return unsigned_char
  with Import => True,
       Convention => C,      
       External_Name => "is_sprp_u64";
       
function is_sprp_i64a(x,y: long) return unsigned_char
  with Import => True,
       Convention => C,      
       External_Name => "is_sprp_i64";
              
function is_prime_u32a(x: unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "is_prime_u32";

function is_prime_i32a(x: int) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "is_prime_i32";
          
function is_prime_u64a(x: unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "is_prime_u64";
     
function is_prime_i64a(x: long) return unsigned_char 
   with 
     Import => True,
     Convention => C,       
     External_Name => "is_prime_i64";
     
function pi_u32a(x: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C,
     External_Name => "pi_u32";
     
function pi_i32a(x: int) return int 
   with 
     Import => True,
     Convention => C,
     External_Name => "pi_i32";
       
function pi_u64a(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
       External_Name => "pi_u64";     
       
function pi_i64a(x: long) return long 
   with 
     Import => True,
     Convention => C,       
     External_Name => "pi_i64";
       
function prime_gen_u32a(x: unsigned_char; res: out unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "prime_gen_u32";    

function prime_gen_i32a(x: unsigned_char; res: out int) return unsigned_char 
   with 
     Import => True,
     Convention => C,    
     External_Name => "prime_gen_i32";
     
function prime_gen_u64a(x: unsigned_char; res: out unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "prime_gen_u64";    

function prime_gen_i64a(x: unsigned_char; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "prime_gen_i64";      

function nth_prime_u32a(x: unsigned; res: out unsigned) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "nth_prime_u32";    

function nth_prime_i32a(x: int; res: out int) return unsigned_char 
   with 
     Import => True,
     Convention => C,    
     External_Name => "nth_prime_i32";

function nth_prime_u64a(x: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,    
     External_Name => "nth_prime_u64";
     
function nth_prime_i64a(x: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "nth_prime_i64";
     
function gcd_u32a(x,y: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C,     
     External_Name => "gcd_u32";
     
function gcd_i32a(x,y: int) return int 
   with 
     Import => True,
     Convention => C,         
     External_Name => "gcd_i32";
     
function gcd_u64a(x,y: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "gcd_u64";
     
function gcd_i64a(x,y: long) return long 
   with 
     Import => True,
     Convention => C,
     External_Name => "gcd_i64";
              
function gcd_u32a(x,y: unsigned; x_inv,y_inv: out unsigned) return unsigned 
   with 
     Import => True,
     Convention => C,     
     External_Name => "gcd_u32";
     
function gcd_i32a(x,y: int; x_inv,y_inv: out int) return int 
   with 
     Import => True,
     Convention => C,         
     External_Name => "gcd_i32";
     
function gcd_u64a(x,y: unsigned_long; x_inv,y_inv: out unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "gcd_u64";
     
function gcd_i64a(x,y: long; x_inv,y_inv: out long) return long 
   with 
     Import => True,
     Convention => C,
     External_Name => "gcd_i64";
     
function lcm_u32a(x,y: unsigned; res: out unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C,     
     External_Name => "lcm_u32";
     
function lcm_i32a(x,y: int; res: out int) return unsigned_char
   with 
     Import => True,
     Convention => C,         
     External_Name => "lcm_i32";
     
function lcm_u64a(x,y: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "lcm_u64";
     
function lcm_i64a(x,y: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "lcm_i64";
     
function euler_totient_u32a(x: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C,
     External_Name => "euler_totient_u32";
     
function euler_totient_i32a(x: int) return int 
   with 
     Import => True,
     Convention => C,
     External_Name => "euler_totient_i32";
     
function euler_totient_u64a(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "euler_totient_u64";
          
function euler_totient_i64a(x: long) return long 
   with 
     Import => True,
     Convention => C,       
     External_Name => "euler_totient_i64";
     
function carmichael_totient_u32a(x: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C,
     External_Name => "carmichael_totient_u32";
     
function carmichael_totient_i32a(x: int) return int 
   with 
     Import => True,
     Convention => C,
     External_Name => "carmichael_totient_i32";
     
function carmichael_totient_u64a(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "carmichael_totient_u64";
     
function carmichael_totient_i64a(x: long) return long 
   with 
     Import => True,
     Convention => C,      
     External_Name => "carmichael_totient_i64";
     
function jordan_totient_u32a(x,y: unsigned; res: out unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C,     
     External_Name => "jordan_totient_u32";
     
function jordan_totient_i32a(x,k: int; res: out int) return unsigned_char
   with 
     Import => True,
     Convention => C,         
     External_Name => "jordan_totient_i32";
     
function jordan_totient_u64a(x,k: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "jordan_totient_u64";
     
function jordan_totient_i64a(x,k: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,         
     External_Name => "jordan_totient_i64";
     
function dedekind_psi_u32a(x,y: unsigned; res: out unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C,     
     External_Name => "dedekind_psi_u32";
     
function dedekind_psi_i32a(x,k: int; res: out int) return unsigned_char
   with 
     Import => True,
     Convention => C,         
     External_Name => "dedekind_psi_i32";
     
function dedekind_psi_u64a(x,k: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "dedekind_psi_u64";
     
function dedekind_psi_i64a(x,k: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,   
     External_Name => "dedekind_psi_i64";
     
function derivative_u32a(x: unsigned; res: out unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C,     
     External_Name => "derivative_u32";
     
function derivative_i32a(x: int; res: out int) return unsigned_char
   with 
     Import => True,
     Convention => C,         
     External_Name => "derivative_i32";
     
function derivative_u64a(x: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "derivative_u64";
     
function derivative_i64a(x: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "derivative_i64";
     
function product_residue_u32a(x,y,n: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C,
     External_Name => "product_residue_u32";
     
function product_residue_i32a(x,y,n: int) return int 
   with 
     Import => True,
     Convention => C,
     External_Name => "product_residue_i32";
     
function product_residue_u64a(x,y,n: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "product_residue_u64";
     
function product_residue_i64a(x,y,n: long) return long 
   with 
     Import => True,
     Convention => C, 
     External_Name => "product_residue_i64";
      
     
function quadratic_residue_u32a(x,n: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C,
     External_Name => "quadratic_residue_u32";
     
function quadratic_residue_i32a(x,n: int) return int 
   with 
     Import => True,
     Convention => C,
     External_Name => "quadratic_residue_i32";
     
function quadratic_residue_u64a(x,n: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "quadratic_residue_u64";
     
function quadratic_residue_i64a(x,n: long) return long 
   with 
     Import => True,
     Convention => C,                                                                        
     External_Name => "quadratic_residue_i64";
     
function exp_residue_u32a(x,y,n: unsigned; res: out unsigned) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "exp_residue_u32";
     
function exp_residue_i32a(x,y,n: int; res: out int) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "exp_residue_i32";
     

function exp_residue_u64a(x,y,n: unsigned_long; res: out unsigned_long) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "exp_residue_u64";
     
function exp_residue_i64a(x,y,n: long; res: out long) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "exp_residue_i64";
     
function legendre_u32a(x,n: unsigned; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "legendre_u32";
     
function legendre_i32a(x,n: int; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "legendre_i32";
     

function legendre_u64a(x,n: unsigned_long; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "legendre_u64";
     
function legendre_i64a(x,n: long; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "legendre_i64";
     
function liouville_u32a(x: unsigned) return char
   with 
     Import => True,
     Convention => C,     
     External_Name => "liouville_u32";
     
function liouville_i32a(x: int) return char
   with 
     Import => True,
     Convention => C,
     External_Name => "liouville_i32";
     
function liouville_u64a(x: unsigned_long) return char
   with 
     Import => True,
     Convention => C,
     External_Name => "liouville_u64";
     
function liouville_i64a(x: long) return char
   with 
     Import => True,
     Convention => C,
     External_Name => "liouville_i64";
     
function mangoldt_u32a(x: unsigned) return Float
   with 
     Import => True,
     Convention => C,     
     External_Name => "mangoldt_u32";
     
function mangoldt_i32a(x: int) return Float
   with 
     Import => True,
     Convention => C,
     External_Name => "mangoldt_i32";
     
function mangoldt_u64a(x: unsigned_long) return Float
   with 
     Import => True,
     Convention => C,
     External_Name => "mangoldt_u64";
     
function mangoldt_i64a(x: long) return Float
   with 
     Import => True,
     Convention => C,     
     External_Name => "mangoldt_i64";
     
function mobius_u32a(x: unsigned) return char
   with 
     Import => True,
     Convention => C,     
     External_Name => "mobius_u32";
     
function mobius_i32a(x: int) return char
   with 
     Import => True,
     Convention => C,
     External_Name => "mobius_i32";
     
function mobius_u64a(x: unsigned_long) return char
   with 
     Import => True,
     Convention => C,
     External_Name => "mobius_u64";
     
function mobius_i64a(x: long) return char
   with 
     Import => True,
     Convention => C,
     External_Name => "mobius_i64";
     
function k_free_u32a(x,k: unsigned) return unsigned_char
   with 
     Import => True,
     Convention => C,     
     External_Name => "k_free_u32";
     
function k_free_i32a(x,k: int) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "k_free_i32";
     
function k_free_u64a(x,k: unsigned_long) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "k_free_u64";
     
function k_free_i64a(x,k: long) return unsigned_char
   with 
     Import => True,
     Convention => C,   
     External_Name => "k_free_i64";
     
function jacobi_u32a(x,n: unsigned; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "jacobi_u32";
     
function jacobi_i32a(x,n: int; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "jacobi_i32";
     

function jacobi_u64a(x,n: unsigned_long; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "jacobi_u64";
     
function jacobi_i64a(x,n: long; res: out char) return unsigned_char
   with 
     Import => True,
     Convention => C,     
     External_Name => "jacobi_i64";
     
function radical_u32a(x: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C,
     External_Name => "radical_u32";
     
function radical_i32a(x: int) return int 
   with 
     Import => True,
     Convention => C,
     External_Name => "radical_i32";
     
function radical_u64a(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "radical_u64";
     
function radical_i64a(x: long) return long 
   with 
     Import => True,
     Convention => C,         
     External_Name => "radical_i64";
     
function smooth_u32a(x: unsigned) return unsigned 
   with 
     Import => True,
     Convention => C,
     External_Name => "smooth_u32";
     
function smooth_i32a(x: int) return int 
   with 
     Import => True,
     Convention => C,
     External_Name => "smooth_i32";
     
function smooth_u64a(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "smooth_u64";
     
function smooth_i64a(x: long) return long 
   with 
     Import => True,
     Convention => C,
     External_Name => "smooth_i64";
     
function is_smooth_u32a(x,y: unsigned) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "is_smooth_u32";
     
function is_smooth_i32a(x,y: int) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "is_smooth_i32";
     
function is_smooth_u64a(x,y: unsigned_long) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "is_smooth_u64";
     
function is_smooth_i64a(x,y: long) return unsigned_char
   with 
     Import => True,
     Convention => C,     
     External_Name => "is_smooth_i64";

                 
end NT_Ada;
