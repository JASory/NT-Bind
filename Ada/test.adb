with Interfaces.C; use Interfaces.C;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;
with NT_Ada.NumberTheory; use NT_Ada.NumberTheory;
--with NT_Error; use NT_Error;

procedure test is

 type Ring is mod 20; 
 
 SUP : constant u32 := 17;
 LO  : constant Ring := 5;
 HI  : constant Ring := 17;
 PI : Integer := 0;
 N : constant Integer := 7;
 X : constant Integer := 5;
 v : constant signed_char := -1;
 
 
 Start_Time, Stop_Time : Time;
 Elapsed_Time : Time_Span;  
 
 function prime is new is_primen(T => Ring);
 
 function primecount is new pin(T => Ring);
 
 function exp is new exp_residuei(T => Integer);
   
begin


Start_Time := Clock;

 --for I in 0 .. SUP loop
 --  if prime(Ring(I)) = True then
  --   PI := PI + 1; 
-- end if; 
-- end loop;
 --PI := pi_i32(T);
  --Put_Line(Integer'Image(prime_gen(T))); 
  --exception
  -- when TOO_LARGE =>
  -- Put_Line("Exception passed");
   
   Stop_Time:= Clock;
Elapsed_Time := Stop_Time - Start_Time;

Put_Line ("Elapsed time: "
& Duration'Image (To_Duration (Elapsed_Time))
& " seconds");
 
Put_Line (""& Integer'Image(exp(N,N,X)));
--Put_Line(Ring'Image(LCM(LO,HI)));
end test;

-- Languages
-- C/C++
-- Ada
-- Fortran
-- Rust
-- Java
-- Swift
-- Python
-- R
-- Go
-- Haskell
-- Julia
-- Kotlin
-- Lisp
-- Mathematica/MATLAB
-- Ruby
-- Javascript
