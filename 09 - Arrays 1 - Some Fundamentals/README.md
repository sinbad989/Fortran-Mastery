# Arrays 1 - Some Fundamentals 

 - fundamental concepts of arrays and `DO` loops 
    - the idea of tables of data and some formal terms used to describe them 
        - array 
        - list and linear list 
        - vector
    - array as a random access structure where any element can be accessed as readily as any other 
        - data in an array are all of the same type 
    - twin concepts of data structure and control structure
    - manipulation of data structures 


## Array 1: Some Fundamentals 

**Table of Data** 
Examples of problems where data can be considered in tabular structure: 
- telephone directory 
- book catalogue 
- examination results or marks
- monthly rainfall 


## Arrays in Fortran 

3 key things to consider here: 
- ability to refer to a set or group of items by a single name 
- ability to access individual items or members of the set 
- easy manipulation of the set or array using appropriate control structure 

## The `DIMENSION` attribute 

`DIMENSION` attributes defines a variable to an array. 

```fortran 
real, dimension(1:100) :: wages 
integer, dimension(1:10000) :: sample 
``` 

`wages` is an array of dimension(size) 100 with real type elements. For the variable `sample` it is an array of dimension 10000 of integer type. 

## An index 

> an index enables you to refer to or select individual elements of the array. Index is used to access or look up an item of interest in an array. 

## Control Structure 

The statement generally used to manipulate the elements of an array is the `DO` statement. 

## Monthly rainfall

The following program reads in the 12 monthly values from the terminal, computes the sum and average for the year, and prints the average out. 

```fortran 
program ch0901
implicit none
real :: total=0.0, average=0.0
real, dimension(1:12) :: RainFall
integer :: month
    print *,' Type in the rainfall values'
    print *,' one per line'
    do month=1,12
        read *, RainFall(month)
    enddo
    do month=1,12
        total = total + RainFall(month)
    enddo
    average = total/2
    print *, 'average monthly rainfall was'
    print *, average
end program ch0901
```

`Rainfall` is the array name. The variable `month` is the *index*. This permits the dynamic manipulation of the array at *run time*. 

The general form of the `DO` statement is 
> DO counter = start, end, increment
example: 

```fortran 
do month=1,12
    read *, RainFall(month)
enddo
```

> Note: indentation is not required by Fortran. However it is good practice and will make programs easier to follow. 

## People's weights 

Here we let the dimension of the array be arbitrary: 

```fortran
nteger, parameter :: number_of_people = 10
real :: total = 0.0, average = 0

integer :: Person
real, dimension(1:number_of_people) :: weight
```

## Summary

- the dimension attribute declares a variable to be an array
    - the declaration expression has two forms: 
    ```fortran 
    real, dimension(1:size) :: weight 
    real, dimension(size) :: weight 
    ```

- `PARAMETER` attribute declares a variable to have a fixed value that cannot be changed during the *run time*. 




Reading and writing data:

input: `data.dat` 
output: `results.txt`
 
(in a DOS box):
```
progch0903.exe < data.dat > results.txt 
```
This is a quick and dirty way of developing programs that do simple I/O; we don't have to keep typing in the data and we also have a record of the behaviour of the program. 


