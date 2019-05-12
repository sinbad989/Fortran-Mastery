program ch1004
implicit none 
integer, parameter :: size = 3 
integer :: lat, long 
real, dimension(1:size,1:size) :: h1,h2,h3,h4 

    do lat = 1,size 
        read *, (h1(lat,long),long=1,size)
    enddo

    do lat=1,size 
        read *, (h2(lat,long),long=1,size)
    enddo

    do lat=1,size 
        read *, (h3(lat,long),long=1,size)
    enddo 

    do lat = 1,size 
        do long = 1,size
            h4(lat,long) = (h1(lat,long)+h2(lat,long)+h1(lat,long))/size
        enddo 
    enddo 

    do lat = 1,size 
        print *, (h4(lat,long),long=1,3)
    enddo 
     
end program ch1004