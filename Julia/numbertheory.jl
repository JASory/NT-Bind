
# Julia Bindings for number-theory zero error handling performed see original library documentation  to find the error cases

 
 function is_sprp_32(z::UInt32, base::UInt32)  
    return ccall( (:is_sprp_32, "libnumbertheory"), Bool, (UInt32,UInt32), z, base)
 end
 
 function is_sprp_64(z::UInt64, base::UInt64)  
    return ccall( (:is_sprp_64, "libnumbertheory"), Bool, (UInt64,UInt64), z, base)
 end

 function is_sprp_128(z::UInt128, base::UInt128)  
    return ccall( (:is_sprp_128, "libnumbertheory"), Bool, (UInt64,UInt64,UInt64,UInt64), UInt64(z&18446744073709551615), UInt64(z>>64), UInt64(base&18446744073709551615), UInt64(base>>64) )
 end

 function is_prime_32(z::UInt32)  
    return ccall( (:is_prime_32, "libnumbertheory"), Bool, (UInt32,), z)
 end
 
 function is_prime_64(z::UInt64)  
    return ccall( (:is_prime_64, "libnumbertheory"), Bool, (UInt64,), z)
 end
 
 function is_prime_128(z::UInt128)  
    return ccall( (:is_prime_128, "libnumbertheory"), Bool, (UInt64,UInt64), UInt64(z&18446744073709551615), UInt64(z>>64))
 end
 
 function nth_prime(z::UInt64)  
    return ccall( (:nth_prime, "libnumbertheory"), UInt64, (UInt64,), z)
 end
 
 function prime_gen(z::Int64)
        return ccall( (:prime_gen, "libnumbertheory"), UInt64, (UInt8,), UInt8(z))
 end 
 
 function primecount(z::UInt64)  
    return ccall( (:pi, "libnumbertheory"), UInt64, (UInt64,), z)
 end
  
 function exp_residue_32(x::UInt32, y::UInt32, n::UInt32)
  return ccall( (:exp_residue_32, "libnumbertheory"), UInt32, (UInt32,UInt32, UInt32), x,y,n) 
 end  
 
 function exp_residue_64(x::UInt64, y::UInt64, n::UInt64)
  return ccall( (:exp_residue_64, "libnumbertheory"), UInt64, (UInt64,UInt64, UInt64), x,y,n) 
 end     
 
 function gcd_32(x::UInt32, y::UInt32)
  return ccall( (:gcd_32, "libnumbertheory"), UInt32, (UInt32,UInt32), x,y) 
 end  
 
 function gcd_64(x::UInt64, y::UInt64)
  return ccall( (:gcd_64, "libnumbertheory"), UInt64, (UInt64,UInt64), x,y) 
 end  
 
 function lcm_32(x::UInt32, y::UInt32)
  return ccall( (:lcm_32, "libnumbertheory"), UInt32, (UInt32,UInt32), x,y) 
 end  
 
 function lcm_64(x::UInt64, y::UInt64)
  return ccall( (:gcd_64, "libnumbertheory"), UInt64, (UInt64,UInt64), x,y) 
 end  
 
 function euler_totient_32(x::UInt32)
  return ccall( (:euler_totient_32, "libnumbertheory"), UInt32, (UInt32,), x) 
 end 
 
 function euler_totient_64(x::UInt64)
  return ccall( (:euler_totient_64, "libnumbertheory"), UInt64, (UInt64,), x) 
 end 
 
 function jordan_totient_32(x::UInt32, k::UInt32)
  return ccall( (:jordan_totient_32, "libnumbertheory"), UInt32, (UInt32,UInt32), x,y) 
 end 
 
 function jordan_totient_64(x::UInt64, k::UInt64)
  return ccall( (:jordan_totient_64, "libnumbertheory"), UInt64, (UInt64,UInt64), x,y) 
 end  
 
 function dedekind_psi_32(x::UInt32, k::UInt32)
  return ccall( (:dedekind_psi_32, "libnumbertheory"), UInt32, (UInt32,UInt32), x,y) 
 end 
 
 function dedekind_psi_64(x::UInt64, k::UInt64)
  return ccall( (:dedekind_psi_64, "libnumbertheory"), UInt64, (UInt64,UInt64), x,y) 
 end 

 
