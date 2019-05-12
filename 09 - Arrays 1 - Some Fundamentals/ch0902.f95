program ch0902
! The program reads up to number_of_people weights
! into the array weight
! Variables used:
! - weight, holds the weight of the people
! - person, an index into the array
! - total, total weight
! - average, average weight of the people
! Parameters used:
! NumberOfPeople, 10 in this case
! The weights are written out so that 
! they can be checked

implicit none
integer, parameter :: number_of_people = 10
real :: total = 0.0, average = 0

integer :: Person
real, dimension(1:number_of_people) :: weight
    do Person=1,number_of_people
        print *, 'type in the weight for person', Person
        read *, weight(Person)
        total = total + weight(Person)
    enddo

    average = total/number_of_people

    print *,'The total of the weights is ',total
    print *,'Average weight is', average
    print *,' ', number_of_people, 'weights were'

    do Person=1,number_of_people
        print *, weight(Person)
    enddo

end program ch0902
