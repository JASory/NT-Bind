# NT-Bind
Bindings for ENT functions for 32 and 64-bit integers in various languages. Targeting gcc, g++, gfortran, and gnat. May work in other compilers but it is not currently designed to. To use this library run 
```bash
  git clone https:://github.com/JASory/NT-Bind
```
Go into the directory
```bash
  cd NT-Bind
```  
Compile the library one of three ways: dynamic {default}, static, or Debian package {dynamic}

### Dynamic 
```bash
cargo build --release
```
Then copy the library produced to /lib/. All further instructions are assuming that the user has copied the library to /lib
```bash
cp NT-Bind/target/release/libnumbertheory.so /lib/libnumbertheory.so
```
### Static
Edit the Cargo.toml to change the cdylib to staticlib. Then perform the same steps as with the dynamic example except now the library is called libnumbertheory.a

### Debian package
Enter the NT-Bind folder and run cargo deb {if it has been installed}
```bash
cd NT-Bind && cargo deb 
```
Then install the debian package. This will automatically install the dynamic library into the /lib folder
```bash
apt install NT-Bind/target/release/nt-bind-0.0.18.deb
```
In the future this library may be distributed in the Debian repository

# Ada
   Generically implemented NumberTheory for all `T in range <>` and `T in mod <>`
   To use run 
   ```bash
   gnatmake nt_ada.adb -largs /lib/numbertheory
   ```
  gnatmake will automatically compile the other files that nt_ada.adb depends on. 
  Ada implements exception handling for values that cannot be computed within the integer range or do not exist
# C

# C++

# Fortran
 Generically implemented NumberTheory for Integer(Kind=4) and Integer(Kind=8)
 To use run 
 ```bash
 gfortran nt_fortran.f08 numbertheory.f08 /lib/numbertheory.so
 ```
# Julia
To use this library include it at the start of the file or REPL
``` julia
 include("/Nt-Bind/numbertheory.jl")
```
# Python
