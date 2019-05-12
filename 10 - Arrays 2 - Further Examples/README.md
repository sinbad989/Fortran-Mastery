# Arrays 2 - Further Examples 

- set an array size at run time - `ALLOCATABLE` arrays 
- array with more than one dimension and the corresponding control structure to permit easy manipulation of higher-dimensional arrays 
- an extended form of the `DIMENSION` attribute declaration
    - alternative `DO` statement to manipulate the array in this new form 
-`DO` loop as a mechanism for the control of repetition in general, not just for manipulating arrays 
- formal definition of `DO` syntax 


## Arrays 2 - Further Examples 
- varying the array size at run time 

The earlier examples set the array size in the following two ways: 
- explicitly using a numeric constant 
- implicitly using a parametrized variable 

In both cases we knew the size of the array. We may not know the size of the array at compile time and Fortran provides the `ALLOCATABLE` attribute to accomodate this kind of problem. Consider the following example: 

`ch1001new.f95`: 
```fortran 
real, dimension(:), allocatable :: weight 
    print *, 'How many people?'
    read *, number_of_people
    allocate(weight(1:number_of_people))
```

## Higher-dimension arrays 

There are instances where it is necessary to have more than one dimension: 
- a map: `ch1002.f95`
    - nesting is permitted to any depth. 
- sensible tabular output: `ch1003.f95`
- average of three sets of values: `ch1004.f95`
- booking arrangements in a theatre or cinema: `ch1005.f95`


## Additional forms of the `DIMENSION` attribute and `DO` loop statement 

- Voltage from -20 to +20 volts: `ch1006.f95`
```fortran 
real, dimension(-20:20) :: current 
    do voltage =-20,20
        current(voltage) = voltage/resistance 
        print *, voltage, ' ', current(voltage)
    enddo 
```
The general form of the `DO` statement: 
> DO counter = start, end , increment 

*start,end,increment* can be positive or negative. 
Note: zero is a legitimate value of dimension limits and of a `DO` loop index 

- Longitude from -180 to +180: `ch1007.f95`
the program links a table of time difference (+12 hours to -12 hours) with longitude (-180 to +180) 


## The `DO` loop and straight repetition

Consider the production of a table of liquid measurement. 
```fortran 
integer :: litre 
real :: gallon, usgallon 
    do litre = 1,10
        gallon = litre*0.2641925
        usgallon = litre*0.220022 
        print *, litre, ' ',gallon, ' ', usgallon  
    enddo 
```



## Summary 
- arrays can have up to seven dimensions 