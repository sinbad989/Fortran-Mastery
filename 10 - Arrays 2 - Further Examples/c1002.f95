program c1002

implicit none
integer, parameter :: size = 3
integer :: lat, log

real, dimension(1:size,1:size) :: height
real, parameter :: correct = 10.0

do lat = 1, size
    do log = 1,size
        print * ,'type in value at ',lat, ' ' ,log
        read * , height(lat,log)
    enddo
enddo

do lat = 1,size
    do log=1,size
        height(lat,log) = height(lat,log) + correct
    enddo
enddo 

print *, 'corrected data is'

do lat=1,size
    do log = 1,size
        print * , height(lat,log)
    enddo
enddo

end program c1002