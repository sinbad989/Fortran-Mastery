program ch1001
! Variables used
! Height - used to hold the heights above sea level
! long - used to represent the longitude
! lat - used to represent the latitude
! 	both restricted to integer values.
! Correct - holds the correction factor

implicit none
integer, parameter :: size = 3
integer :: lat, long 
real, dimension(size,size) :: height
real, parameter :: correct = 10.0
	do lat = 1, size
		do long = 1, size
			print *, 'Type in value at ',lat,'',long
			read *, height(lat,long)
		enddo
	enddo
	
	do lat = 1,size
		do long = 1,size
			height(lat,long) = height(lat,long) + correct
		enddo
	enddo
	
	print *, 'Corrected data is '
	do lat=1,size
		do long=1,size
			print *, height(lat,long)
		enddo
	enddo
	
end program ch1001 