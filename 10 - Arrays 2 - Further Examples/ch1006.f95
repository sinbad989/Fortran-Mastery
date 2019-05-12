program ch1006
implicit none 
real, dimension(-20:20) :: current 

real :: resistance 
integer :: voltage 

    print *, 'Type in the resistance '
    read *, resistance 

    do voltage =-20,20
        current(voltage) = voltage/resistance 
        print *, voltage, ' ', current(voltage)
    enddo 
end program ch1006