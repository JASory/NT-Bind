with Interfaces.C; use Interfaces.C;
with Ada.Exceptions; use Ada.Exceptions;
with Ada.Text_IO; use Ada.Text_IO;
with  NT_Error; use NT_Error;
 --with  ; use nt_ada;
 
package body NT_Ada.NumberTheory is


 

function is_sprpn(X,Y : T) return Boolean is
begin 

 if is_sprp_64n(unsigned_long(X),unsigned_long(Y)) = 0 then 
     return False;
    else
    return True;
    end if; 
end is_sprpn;


function is_sprpi(X,Y : T) return Boolean is
begin 

 if is_sprp_64i(long(X),long(Y)) = 0 then 
     return False;
    else
    return True;
    end if; 
end is_sprpi;


  
  -- Primality for Integers
function is_primei(X : T) return Boolean is
begin 

 if is_prime_64i(long(X)) = 0 then 
     return False;
    else
    return True;
    end if; 
end is_primei;

-- Primality test for modular types
function is_primen(X : T) return Boolean is
begin 

 if is_prime_64n(unsigned_long(X)) = 0 then 
     return False;
    else
    return True;
    end if; 
end is_primen;


function pin(X : T) return T is
begin 
   return T(pi_64n(unsigned_long(X)));
end pin;


function pii(X : T) return T is
begin 
   return T(pi_64i(long(ABS(X))));
end pii;

function gcdn(X,Y : T) return T is
begin 
   return T(gcd_64n(unsigned_long(X),unsigned_long(Y)));
end gcdn;


function gcdi(X,Y : T) return T is
begin 
   return T(gcd_64i(long(X),long(Y)));
end gcdi;

function extended_gcdn(X,Y: T; XINV,YINV : out T) return T is
   C_XINV,C_YINV: unsigned_long;
   GCD : T; 
  begin
   GCD := T(extended_gcd_64n(unsigned_long(X),unsigned_long(Y),C_XINV,C_YINV));
  XINV := T(C_XINV);
  YINV := T(C_YINV);
  return GCD;
end extended_gcdn;  

function extended_gcdi(X,Y: T; XINV,YINV : out T) return T is
   C_XINV,C_YINV: long;
   GCD : T; 
  begin
   GCD := T(extended_gcd_64i(long(X),long(Y),C_XINV,C_YINV));
  XINV := T(C_XINV);
  YINV := T(C_YINV);
  return GCD;
end extended_gcdi;

function lcmn(X,Y : T) return T is
  Flag : unsigned_char;
  C_Result : unsigned_long; 
  Result : T; 
begin 
  
  Flag := lcm_64n(unsigned_long(X), unsigned_long(Y),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Comp_Error; 
  else 
  
   -- Raise exception if conversion failed
  Result := T(C_Result);
    
   return Result;
   end if;
end lcmn;

function lcmi(X,Y : T) return T is
  Flag : unsigned_char;
  C_Result : long; 
  Result : T; 
begin 
  
  Flag := lcm_64i(long(X), long(Y),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Comp_Error; 
  else 

   -- Raise exception if conversion failed
  Result := T(C_Result);
  
   return Result;
   
   end if;
   
end lcmi;

-- Euler totient for Naturals
function euler_totientn(X: T) return T is 
 begin 
   return T(euler_totient_64n(unsigned_long(X)));
end euler_totientn;

-- Euler totient for Integers
function euler_totienti(X: T) return T is 
 begin 
   return T(euler_totient_64i(long(X)));
end euler_totienti;

-- Carmichael totient for Natural
function carmichael_totientn(X: T) return T is 
 begin 
   return T(carmichael_totient_64n(unsigned_long(X)));
end carmichael_totientn;

-- Carmichael totient for Integers
function carmichael_totienti(X: T) return T is 
 begin 
 
   return T(carmichael_totient_64i(long(X)));
   
end carmichael_totienti;

-- Jordan totient for Naturals
function jordan_totientn(X,K: T) return T is

  Flag : unsigned_char;
  C_Result : unsigned_long; 
  Result : T; 
  
begin 
  
  Flag := jordan_totient_64n(unsigned_long(X), unsigned_long(K),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Comp_Error; 
  else 
  
   -- Raise exception if conversion failed
  Result := T(C_Result);
    
   return Result;
   end if;
   
end jordan_totientn;

-- Jordan totient for Integers
function jordan_totienti(X,K: T) return T is 

  Flag : unsigned_char;
  C_Result : long; 
  Result : T; 
  
begin 
  
  Flag := jordan_totient_64i(long(X), long(K),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Comp_Error; 
  else 
  
   -- Raise exception if conversion failed
  Result := T(C_Result);
    
   return Result;
   end if;
   
end jordan_totienti;

-- Generalized Dedekind psi -k variant for Naturals
function dedekind_psin(X,K: T) return T is 

  Flag : unsigned_char;
  C_Result : unsigned_long; 
  Result : T; 
  
begin 
  
  Flag := dedekind_psi_64n(unsigned_long(X), unsigned_long(K),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Comp_Error; 
  else 
  
   -- Raise exception if conversion failed
  Result := T(C_Result);
    
   return Result;
   end if;
   
end dedekind_psin;

-- Generalized Dedekind psi function for Integers 
function dedekind_psii(X,K: T) return T is 

  Flag : unsigned_char;
  C_Result : long; 
  Result : T; 
  
begin 
  
  Flag := dedekind_psi_64i(long(X), long(K),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Comp_Error; 
  else 
  
   -- Raise exception if conversion failed
  Result := T(C_Result);
    
   return Result;
   end if;
   
end dedekind_psii;


function derivativen(X: T) return T is 

  Flag : unsigned_char;
  C_Result : unsigned_long; 
  Result : T; 
  
begin 
  
  Flag := derivative_64n(unsigned_long(X),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Comp_Error; 
  else 
  
   -- Raise exception if conversion failed
  Result := T(C_Result);
    
   return Result;
   end if;
   
end derivativen;

function derivativei(X: T) return T is 

  Flag : unsigned_char;
  C_Result : long; 
  Result : T; 
  
begin 
  
  Flag := derivative_64i(long(X),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Comp_Error; 
  else 
  
   -- Raise exception if conversion failed
  Result := T(C_Result);
    
   return Result;
   end if;
   
end derivativei;

-- Product residue for Naturals
function product_residuen(X,Y,N: T) return T is

begin 
   return T(product_residue_64n(unsigned_long(X),unsigned_long(Y), unsigned_long(N)));
   
end product_residuen;

-- Product residue
function product_residuei(X,Y,N: T) return T is

begin 
   return T(product_residue_64i(long(X),long(Y), long(N)));
   
end product_residuei;

-- Quadratic residue for Naturals
function quadratic_residuen(X,N: T) return T is

begin 
   return T(quadratic_residue_64n(unsigned_long(X), unsigned_long(N)));
   
end quadratic_residuen;

-- Quadratic residue for Integers
function quadratic_residuei(X,N: T) return T is

begin 
   return T(quadratic_residue_64i(long(X), long(N)));
   
end quadratic_residuei;

-- Exponential residue for Naturals (mod pow)
function exp_residuen(X,Y,N: T) return T is 

  Flag : unsigned_char;
  C_Result : unsigned_long; 
  Result : T; 
  
begin 
  
  Flag := exp_residue_64n(unsigned_long(X),unsigned_long(Y),unsigned_long(N),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Comp_Error; 
  else 
  
   -- Raise exception if conversion failed
  Result := T(C_Result);
    
   return Result;
   end if;
   
end exp_residuen;

-- Exponential residue for Integers (mod pow)
function exp_residuei(X,Y,N: T) return T is 

  Flag : unsigned_char;
  C_Result : long; 
  Result : T; 
  
begin 
  
  Flag := exp_residue_64i(long(X),long(Y),long(N),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Comp_Error; 
  else 
  
   -- Raise exception if conversion failed
  Result := T(C_Result);
    
   return Result;
   end if;
   
end exp_residuei;








end NT_Ada.NumberTheory;
