package NT_Ada.NumberTheory is 

 type u32 is mod 2**32;
 type u64 is mod 2**64;
 
generic type T is mod <>;
  function is_sprpn(X,Y : T) return Boolean;

generic type T is range <>;
  function is_sprpi(X,Y : T) return Boolean;

generic type T is mod <>;
  function is_primen(X : T) return Boolean;

generic type T is range <>;
  function is_primei(X : T) return Boolean;

generic type T is mod <>;
 function pin(X: T) return T;
 
generic type T is range <>;
 function pii(X: T) return T; 
 
generic type T is mod <>;
 function gcdn(X,Y: T) return T;
 
generic type T is range <>;
 function gcdi(X,Y: T) return T; 

generic type T is mod <>;
 function extended_gcdn(X,Y: T; XINV,YINV: out T) return T; 
 
generic type T is range <>;
 function extended_gcdi(X,Y: T; XINV,YINV: out T) return T; 
  
generic type T is mod <>;
 function lcmn(X,Y: T) return T;
 
generic type T is range <>;
 function lcmi(X,Y: T) return T;   

generic type T is mod <>;
 function euler_totientn(X: T) return T;
 
generic type T is range <>;
 function euler_totienti(X: T) return T;   

generic type T is mod <>;
 function carmichael_totientn(X: T) return T;
 
generic type T is range <>;
 function carmichael_totienti(X: T) return T;   
 
generic type T is mod <>;
 function jordan_totientn(X,K: T) return T;
 
generic type T is range <>;
 function jordan_totienti(X,K: T) return T;    
 
generic type T is mod <>;
 function dedekind_psin(X,K: T) return T;
 
generic type T is range <>;
 function dedekind_psii(X,K: T) return T;  

generic type T is mod <>;
 function derivativen(X: T) return T;  
 
generic type T is range <>;
 function derivativei(X: T) return T;      

generic type T is mod <>;
 function product_residuen(X,Y,N: T) return T;      
 
generic type T is range <>;
 function product_residuei(X,Y,N: T) return T;   
 
generic type T is mod <>;
 function quadratic_residuen(X,N: T) return T;      
 
generic type T is range <>;
 function quadratic_residuei(X,N: T) return T;     
 
generic type T is mod <>;
 function exp_residuen(X,Y,N: T) return T;      
 
generic type T is range <>;
 function exp_residuei(X,Y,N: T) return T;        
   
 

   
end NT_Ada.NumberTheory;
