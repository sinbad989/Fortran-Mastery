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

