program ch1008 
implicit none 
! 
! 1 us gallon = 3.7854118 litres 
! 1 uk gallon = 4.545 litres 
! 
integer :: litre 
real :: gallon, usgallon 
    do litre = 1,10
        gallon = litre*0.2641925
        usgallon = litre*0.220022 
        print *, litre, ' ',gallon, ' ', usgallon  
    enddo 
end program ch1008