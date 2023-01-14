# NT-Bind
Bindings for ENT in various languages. Targeting gcc, g++, gfortran, and gnat. May work in other compilers but it is not currently designed to. To use this library run 
```
  git clone https:://github.com/JASory/NT-Bind
```
Go into the directory
```
  cd NT-Bind
```  
Compile the library one of three ways: dynamic {default}, static, or Debian package {dynamic}

### Dynamic 
```
cargo build --release
```
Then copy the library produced to /lib/. All further instructions are assuming that the user has copied the library to /lib
```
cp NT-Bind/target/release/libnumbertheory.so /lib/libnumbertheory.so
```
### Static
Edit the Cargo.toml to 

# Ada
   Generically implemented 
# C

# Fortran

# Julia
