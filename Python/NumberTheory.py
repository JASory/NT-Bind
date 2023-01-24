
import ctypes
import pathlib


libname = pathlib.Path("/home/user1/Rust/ntbind/target/release/libnumbertheory.so")
c_lib = ctypes.CDLL(libname)
    
def is_sprpn(x,y): 
  c_lib.is_sprp_64n.restype = ctypes.c_bool
  return c_lib.is_sprp_64n(ctypes.c_ulong(x), ctypes.c_ulong(y));

def is_sprpi(x,y): 
   c_lib.is_sprp_64i.restype = ctypes.c_bool
   return c_lib.is_sprp_64i(ctypes.c_long(x),ctypes.c_long(y));

def is_primen(x): 
  c_lib.is_prime_64n.restype = ctypes.c_bool
  return c_lib.is_prime_64n(ctypes.c_ulong(x));

def is_primei(x):
  c_lib.is_prime_64i.restype = ctypes.c_bool
  return c_lib.is_prime_64i(ctypes.c_long(x));

def pin(x): 
  c_lib.pi_64n.restype = ctypes.c_ulong
  return c_lib.pi_64n(ctypes.c_ulong(x));

def pii(x):
  c_lib.pi_64i.restype = ctypes.c_long
  return c_lib.pi_64i(ctypes.c_long(x));

 # NumberTheory api
