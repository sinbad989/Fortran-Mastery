program ch1001
!
! This program is a simple variant of ch0902 
! The array is now allocatable 
! and the user is prompted for the 
! number of people at run time 
!

implicit none 
integer :: number_of_people 
real :: total = 0.0, average = 0.0 
integer :: person 
real, dimension(:), allocatable :: weight 

    print *, 'How many people?'
    read *, number_of_people
    allocate(weight(1:number_of_people))
    do person = 1, number_of_people
        print *, 'Type in the weight for person', person 
        read *, weight(person)
        total = total + weight(person)
    enddo   

    average = total/number_of_people
    print *, 'The total of the weights is ', total 
    print *, 'Average weight is', average
    print *, ' ',number_of_people,' Weights were '
    do person = 1, number_of_people
        print *, weight(person)
    enddo 
end program ch1001