program ch1507
implicit none 
integer :: i,j, result 
integer :: gcd 
    print *,' Type in two integers' 
    read *, i,j 
    result = GCD(i,j)
    print *, ' GCD is', result 

end program ch1507

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