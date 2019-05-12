program ch1007
implicit none 
real, dimension(-180:180) :: time = 0  
integer :: degree, strip 
real :: value 
    do degree =-180,165,15
        value = degree/15.
        do strip = 0,14
            time(degree+strip) = value 
        enddo
    enddo 

    do degree = -180,180 
        print *, degree, ' ', time(degree)
    enddo
end program ch1007
