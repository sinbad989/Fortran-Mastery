# Arithmetic

- evaluation of arithmetic expression 
- idea of truncation and rounding to reals 
- use of `PARAMETER` statement to define or set up constants
-  other concepts involved in numerical computation:
    - specifying data types using kind-type parameters 
    - concept of numeric models and positional number systems for integer and real arithmetic and their implementation on binary devices 
    - testing the numerical representation of different types on a system 

Five arithmetic operators available in Fortran: 
1. Addition 
2. Subtraction 
3. Division 
4. Multiplication
5. Exponentation 

## 8.1 Rounding and Truncation 


**Truncation** - cutting part of the number, e.g. with 12.45 truncating to two figures leaves 12

**Rounding** - number is changed to the nearest whole number. eg. 12.45 is rounded to 13

> You must be aware of these two operations. They may occasionally cause problems in division and in expressions with more than one data type. 

`ch0802.f95` 
```fortran 
real :: a,b,c 
integer :: i 
    a = 1.5 
    b = 2.0 
    c = a/b 
    i = a/b 
    print *, a,b 
    print *, c 
    print *, i
```
For the code above, `C` has the value of 0.75, and `I` has the value zero, as a result of *type conversion*. 

`ch0803.f95` 
```fortran 
integer :: i,j,k 
real :: answer 
    i = 5 
    j = 2 
    k = 4
    answer = i/j*k 
```
In the case above, the `answer` is 8, instead of 10, because of the integer division involve. This is the kind of problem one should be wary.

Truncation takes place in Fortra:
- across an `=` sign, when a real is assigned to an integer
- in integer division 

`WARNING`: be careful when attempting *mixed mode arithmetic* - that is , when mixing reals and integers. 




