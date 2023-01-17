with Interfaces.C; use Interfaces.C;
with Ada.Exceptions; use Ada.Exceptions;
--with  NT_Error; use NT_Error;
 --with  ; use nt_ada;
 
package body NT_Ada.NumberTheory is


 

function Unsigned_SPRP(X,Y : T) return Boolean is
begin 

 if is_sprp_u64a(unsigned_long(X),unsigned_long(Y)) = 0 then 
     return False;
    else
    return True;
    end if; 
end Unsigned_SPRP;


function Signed_SPRP(X,Y : T) return Boolean is
begin 

 if is_sprp_i64a(long(X),long(Y)) = 0 then 
     return False;
    else
    return True;
    end if; 
end Signed_SPRP;


  
  -- Primality for Integers
function Signed_Primality(X : T) return Boolean is
begin 

 if is_prime_i64a(long(X)) = 0 then 
     return False;
    else
    return True;
    end if; 
end Signed_Primality;

-- Primality test for modular types
function Unsigned_Primality(X : T) return Boolean is
begin 

 if is_prime_u64a(unsigned_long(X)) = 0 then 
     return False;
    else
    return True;
    end if; 
end Unsigned_Primality;


function Unsigned_Pi(X : T) return T is
begin 
   return T(pi_u64a(unsigned_long(X)));
end Unsigned_Pi;


function Signed_Pi(X : T) return T is
begin 
   return T(pi_i64a(long(ABS(X))));
end Signed_Pi;

function Unsigned_GCD(X,Y : T) return T is
begin 
   return T(gcd_u64a(unsigned_long(X),unsigned_long(Y)));
end Unsigned_GCD;


function Signed_GCD(X,Y : T) return T is
begin 
   return T(gcd_i64a(long(X),long(Y)));
end Signed_GCD;

function Unsigned_LCM(X,Y : T) return T is
  Flag : unsigned_char;
  C_Result : unsigned_long; 
  Result : T; 
begin 
  
  Flag := lcm_u64a(unsigned_long(X), unsigned_long(Y),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Constraint_Error; 
  else 
  
   -- Raise exception if conversion failed
  Result := T(C_Result);
    
   return Result;
   end if;
end Unsigned_LCM;

function Signed_LCM(X,Y : T) return T is
  Flag : unsigned_char;
  C_Result : long; 
  Result : T; 
begin 
  
  Flag := lcm_i64a(long(X), long(Y),C_Result); 
     -- Raise exception if LCM computation failed
  if Flag = 1 then 
    raise Constraint_Error; 
  else 

   -- Raise exception if conversion failed
  Result := T(C_Result);
  
   return Result;
   
   end if;
   
end Signed_LCM;

end NT_Ada.NumberTheory;
