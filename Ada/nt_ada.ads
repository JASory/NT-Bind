with Interfaces.C; use Interfaces.C;


package NT_Ada is 

private 
function rng_32n return unsigned 
   with 
     Import => True,
     Convention => C,
     External_Name => "rng_32n";
          
function rng_64n return unsigned_long  
   with 
     Import => True,
     Convention => C, 
     External_Name => "rng_64n";

     
function is_sprp_64n(x,y: unsigned_long) return unsigned_char
  with Import => True,
       Convention => C,      
       External_Name => "is_sprp_64n";
       
function is_sprp_64i(x,y: long) return unsigned_char
  with Import => True,
       Convention => C,      
       External_Name => "is_sprp_64i";
              
          
function is_prime_64n(x: unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "is_prime_64n";
     
function is_prime_64i(x: long) return unsigned_char 
   with 
     Import => True,
     Convention => C,       
     External_Name => "is_prime_64i";
     
       
function pi_64n(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
       External_Name => "pi_64n";     
       
function pi_64i(x: long) return long 
   with 
     Import => True,
     Convention => C,       
     External_Name => "pi_64i";
       
     
function prime_gen_64n(x: unsigned_char; res: out unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "prime_gen_64n";    

function prime_gen_64i(x: unsigned_char; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "prime_gen_64i";      


function nth_prime_64n(x: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,    
     External_Name => "nth_prime_64n";
     
function nth_prime_64i(x: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "nth_prime_64i";
     
     
function gcd_64n(x,y: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "gcd_64n";
     
function gcd_64i(x,y: long) return long 
   with 
     Import => True,
     Convention => C,
     External_Name => "gcd_64i";
              
function extended_gcd_64n(x,y: unsigned_long; xinv,yinv: out unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "extended_gcd_64n";
     
function extended_gcd_64i(x,y: long; xinv,yinv: out long) return long 
   with 
     Import => True,
     Convention => C,
     External_Name => "extended_gcd_64i";

     
function lcm_64n(x,y: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "lcm_64n";
     
function lcm_64i(x,y: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "lcm_64i";
     
function euler_totient_64n(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "euler_totient_64n";
          
function euler_totient_64i(x: long) return long 
   with 
     Import => True,
     Convention => C,       
     External_Name => "euler_totient_64i";
     
     
function carmichael_totient_64n(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "carmichael_totient_64n";
     
function carmichael_totient_64i(x: long) return long 
   with 
     Import => True,
     Convention => C,      
     External_Name => "carmichael_totient_64i";
     
     
function jordan_totient_64n(x,k: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "jordan_totient_64n";
     
function jordan_totient_64i(x,k: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,         
     External_Name => "jordan_totient_64i";
     
     
function dedekind_psi_64n(x,k: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "dedekind_psi_64n";
     
function dedekind_psi_64i(x,k: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,   
     External_Name => "dedekind_psi_64i";
     
     
function derivative_64n(x: unsigned_long; res: out unsigned_long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "derivative_64n";
     
function derivative_64i(x: long; res: out long) return unsigned_char 
   with 
     Import => True,
     Convention => C,
     External_Name => "derivative_64i";
     
     
function product_residue_64n(x,y,n: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "product_residue_64n";
     
function product_residue_64i(x,y,n: long) return long 
   with 
     Import => True,
     Convention => C, 
     External_Name => "product_residue_64i";
      
     
function quadratic_residue_64n(x,n: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "quadratic_residue_64n";
     
function quadratic_residue_64i(x,n: long) return long 
   with 
     Import => True,
     Convention => C,                                                                        
     External_Name => "quadratic_residue_64i";
     
     

function exp_residue_64n(x,y,n: unsigned_long; res: out unsigned_long) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "exp_residue_64n";
     
function exp_residue_64i(x,y,n: long; res: out long) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "exp_residue_64i";
     

function legendre_64n(x,n: unsigned_long; res: out signed_char) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "legendre_64n";
     
function legendre_64i(x,n: long; res: out signed_char) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "legendre_64i";
     
     
function liouville_64n(x: unsigned_long) return signed_char
   with 
     Import => True,
     Convention => C,
     External_Name => "liouville_64n";
     
function liouville_64i(x: long) return signed_char
   with 
     Import => True,
     Convention => C,
     External_Name => "liouville_64i";
     
     
function mangoldt_64n(x: unsigned_long) return Long_Float
   with 
     Import => True,
     Convention => C,
     External_Name => "mangoldt_64n";
     
function mangoldt_64i(x: long) return Long_Float
   with 
     Import => True,
     Convention => C,     
     External_Name => "mangoldt_64i";
     
     
function mobius_64n(x: unsigned_long) return signed_char
   with 
     Import => True,
     Convention => C,
     External_Name => "mobius_64n";
     
function mobius_64i(x: long) return signed_char
   with 
     Import => True,
     Convention => C,
     External_Name => "mobius_64i";
     
     
function k_free_64n(x,k: unsigned_long) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "k_free_64n";
     
function k_free_64i(x,k: long) return unsigned_char
   with 
     Import => True,
     Convention => C,   
     External_Name => "k_free_64i";
     

function jacobi_64n(x,n: unsigned_long; res: out signed_char) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "jacobi_64n";
     
function jacobi_64i(x,n: long; res: out signed_char) return unsigned_char
   with 
     Import => True,
     Convention => C,     
     External_Name => "jacobi_64i";
     
     
function radical_64n(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "radical_64n";
     
function radical_64i(x: long) return long 
   with 
     Import => True,
     Convention => C,         
     External_Name => "radical_64i";
     
     
function smooth_64n(x: unsigned_long) return unsigned_long 
   with 
     Import => True,
     Convention => C,
     External_Name => "smooth_64n";
     
function smooth_64i(x: long) return long 
   with 
     Import => True,
     Convention => C,
     External_Name => "smooth_64i";
     
     
function is_smooth_64n(x,y: unsigned_long) return unsigned_char
   with 
     Import => True,
     Convention => C,
     External_Name => "is_smooth_64n";
     
function is_smooth_64i(x,y: long) return unsigned_char
   with 
     Import => True,
     Convention => C,     
     External_Name => "is_smooth_64i";

                 
end NT_Ada;
