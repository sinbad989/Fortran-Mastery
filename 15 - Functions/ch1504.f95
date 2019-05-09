program ch1504
implicit none 
real, dimension(5):: x=(/1.0,2.0,3.0,4.0,5.0/)
! elemental function 
    print *, 'Sine of ',x,'=', sin(x)

! transformational function
    print *, ' Sum of', x,'=', sum(x)
end program ch1504