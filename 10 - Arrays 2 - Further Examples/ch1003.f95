program c1003
implicit none

integer, parameter :: size = 3
real,dimension(size,size) :: h1,h2,h3,h_ave
integer :: lat, long
    print *, 'Enter first set'
    do lat = 1,size
        do long = 1,size
            read *, h1(lat,long)
        enddo
    enddo
    print *, 'Enter the second set'
    do lat = 1,size
        do long = 1,size
            read *, h2(lat,long)
        enddo
    enddo
    print *, 'Enter the third set'    
    do lat = 1,size
        do long = 1,size
            read *, h3(lat,long)
        enddo
    enddo

   
    do lat = 1,size
        do long = 1,size
            h_ave(lat,long)=(h1(lat,long) + h2(lat,long) + h3(lat,long))/size
        enddo
    enddo

    do lat = 1,size
        print *, (h_ave(lat,long),long=1,3)
    enddo

end program c1003