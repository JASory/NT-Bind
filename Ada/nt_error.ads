package NT_Error

  -- Due to the construction of the Rust library these exceptions are not necessarily the true reason for failure
  -- but rather the most likely cause. Read the original source code at www.github.com/JASory/ENT
  DNE : exception; -- Does Not Exist  
  Interval_Exceeded : exception; -- Does Not Exist in the datatype bounds
  Comp_Exceeded : exception;     -- May exist in the datatype bounds but intermediate computations exceeded the bounds
end NT_Error;
