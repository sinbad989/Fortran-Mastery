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
- **Computational functions** 
- **Array functions** 
- **Predefined subroutines**

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

