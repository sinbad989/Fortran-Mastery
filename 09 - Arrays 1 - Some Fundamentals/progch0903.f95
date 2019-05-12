program probch0903

integer, parameter :: num_of_person = 10
integer :: person 

real :: average_height = 0.0, total_height = 0.0
real :: average_weight = 0.0, total_weight = 0.0

real, dimension(1:num_of_person) :: weight, height, bmi
    
    ! do person=1,num_of_person
    !     print *, 'Type Height and Weight for person', person
    !     read *, height(person), weight(person)
    !     total_height = total_height + height(person)
    !     total_weight = total_weight + weight(person)
    !     bmi(person) = weight(person)/height(person)

    ! enddo

    open(1,file='data.dat',status='old',action='read')
    do i=1,num_of_person
        read(1,*) height(i), weight(i)
        total_height = total_height + height(i)
        total_weight = total_weight + weight(i)
        bmi(i) = weight(i)/height(i)
    enddo

    average_height = total_height/num_of_person
    average_weight = total_weight/num_of_person

    print *,'The total of the weights is ',total_weight
    print *,'Average weight is', average_weight
    print *,' ', num_of_person, 'weights were'
    do person=1,num_of_person
        print *, weight(person)
    enddo

    print *,'The total of the heights is ',total_height
    print *,'Average height is', average_height
    print *,' ', num_of_person, 'weights were'
    do person=1,num_of_person
        print *, height(Person)
    enddo
    print *,'The BMI of the people are:'
    do  person=1,num_of_person
        print *, bmi(person)
    enddo

    ! do person=1,num_of_person
    ! if (bmi(person) < 24.9) then
    !     print *'Person ',person,'Grade 0'
    ! else if (bmi(person)>=25) .and. 
    ! enddo
end program probch0903