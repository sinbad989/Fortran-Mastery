program ch1002
! Variables used
! Height - used to hold the heights above sea level
! long - used to represent the longitude
! lat - used to represent the latitude
! 	both restricted to integer values.

implicit none
integer, parameter :: size = 3
integer :: lat, long 
real, dimension(size,size) :: height
real, parameter :: correct = 1.5
	do lat = 1, size
		do long = 1, size
			print *, 'Type in value at ',lat,'',long
			read *, height(lat,long)
            height(lat,long) = height(lat,long) + correct
		enddo
	enddo

	do lat=1,size
		print *, (height(lat,long), long=1,3)
	enddo
	
end program ch1002 