program ch1005 
implicit none 
integer, parameter :: NR=5
integer, parameter :: NC=5
integer, parameter :: NF=5
integer :: row, column, floor 
character*1, dimension(1:NR,1:NC,1:NF) :: seats = ' '
    do floor = 1, NF
        do row = 1, NR
            read *, (seats(row,column,floor),column=1,NC)
        enddo
    enddo 

    print *, ' Seat plan is'
    do floor = 1, NF 
        print *, 'Floor = ', floor 
        do row = 1,NR 
            print *, (seats(row,column,floor),column=1,NC)
        enddo
    enddo 
end program ch1005