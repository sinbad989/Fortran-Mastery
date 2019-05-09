# Functions

- available predefined functions in Fortran 95

- intrinsic functions, generic, elemental, transformational 

  - user defined elemental and pure functions 
  - internal user defined functions 

- scope rules in Fortran 95 for variables and functions 

- concept of recursive function

  
## 15.7 Complete list of predefined functions 

- **Inquiry functions:**  
  - Bit: `bit_size` 
  - Character: `len` 
  - Numeric: `digits`, `epsilon`, `exponent`, `fraction`, `huge`, `kind`, 
- **Transfer and conversion functions** 
  - `achar`, `aimag`, `aint`, `anint`, `char`, `cmplx`, `conjg`, `dble`, `iachar`, `ibits`, `ichar`, `int`, `logical`, `nint`, `real`, `transfer`
- **Computational functions** 
  - Numeric: `abs`, `acos`, `asin`, `atan`, `atan2`, `ceiling`, `cos`, `cosh`, `dim`, `dot_product`, `dprod`, `exp`, `floor`, `log`, `log10`, `matmul`, `max`, `min`, `mod`, `modulo`, `sign`, `sin`, `sinh`, `sqrt`, `tan`, `tanh` 
  - Character: `adjustl`, `adjustr`, `index`, `lge`, `lgt`, `lle`, `llt` , `repeat`, `scan`, `trim`, `verify` 
  - Bit: `btest`, `iand`, `ibclr`, `ibset`, `ieor`, `ior`, `ishft`, `ishftc`, `not`
- **Array functions** 
  - Reduction: `all`, `any`, `count`, `maxval`, `minval`, `product`, `sum`
  - Construction: `merge`, `pack`, `spread`, `unpack`
  - Reshape: `reshape`
  - Manipulation: `cshift`, `eoshift`, `transpose`
- **Predefined subroutines**
  - Date and time: `cpu_time`, `date_and_time`, `system_clock`  
  - Random number: `random_number`, `random_seed`
  - Other: `mvbits` 

## 15.8 Supplying your own functions 
There are two stages here: 
1. define the function
2. reference or use it 

The following defines a function: 

```fortran
integer function GCD(A,B)
implicit none 
integer , intent(IN) :: A,B 
integer :: temp 
    if (A < B ) then 
        temp = A 
    else 
        temp = B
    endif 
    do while ((mod(A,temp)/=0) .or. (mod(B,temp) /= 0))
        temp = temp - 1
    enddo 

    GCD = temp 
end function GCD
```

The following code uses the function by referencing or calling it, 

```fortran
program ch1507
implicit none 
integer :: i,j, result 
integer :: gcd 
    print *,' Type in two integers' 
    read *, i,j 
    result = GCD(i,j)
    print *, ' GCD is', result 
end program ch1507
```

## 15.9  An introduction to the scope of variables and local variables

Solving a problem using Fortran is usually achieved by using *program units* (a main program, one or more functions and one or more subroutines). The communication between units is limited and can be isolated to the arguments of the function. 

From the example above, `i`, `j`, and `result` are local to the main program. 

On the other hand, `A` and `B` in the `GCD` function do not exist in any real sense, rather they will be replaced by the actual variable values from the calling routine. 

