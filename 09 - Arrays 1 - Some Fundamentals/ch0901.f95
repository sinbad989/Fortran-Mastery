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