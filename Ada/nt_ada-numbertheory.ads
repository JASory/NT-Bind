package NT_Ada.NumberTheory is 

 type u32 is mod 2**32;
 type u64 is mod 2**64;
 
generic type T is mod <>;
  function Unsigned_SPRP(X,Y : T) return Boolean;

generic type T is range <>;
  function Signed_SPRP(X,Y : T) return Boolean;

generic type T is mod <>;
  function Unsigned_Primality(X : T) return Boolean;

generic type T is range <>;
  function Signed_Primality(X : T) return Boolean;

generic type T is mod <>;
 function Unsigned_Pi(X: T) return T;
 
generic type T is range <>;
 function Signed_Pi(X: T) return T; 
 
generic type T is mod <>;
 function Unsigned_GCD(X,Y: T) return T;
 
generic type T is range <>;
 function Signed_GCD(X,Y: T) return T; 
 
generic type T is mod <>;
 function Unsigned_LCM(X,Y: T) return T;
 
generic type T is range <>;
 function Signed_LCM(X,Y: T) return T;   

end NT_Ada.NumberTheory;
