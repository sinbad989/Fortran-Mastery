program probch0903

integer, parameter :: num_of_person = 3
integer :: person 

real :: average_height = 0.0, total_height = 0.0
real :: average_weight = 0.0, total_weight = 0.0

real, dimension(1:num_of_person) :: weight, height, bmi
character(80), dimension(1:num_of_person) :: names

    do person=1,num_of_person
        print *, 'Name Type Height and Weight for person', person
        read *,names(person), height(person), weight(person)
        total_height = total_height + height(person)
        total_weight = total_weight + weight(person)
        bmi(person) = weight(person)/height(person)

    enddo

    average_height = total_height/num_of_person
    average_weight = total_weight/num_of_person

    print *,'The total of the weights is ',total_weight
    print *,'Average weight is', average_weight
    print *,' ', num_of_person, 'weights were'
    print *,'The total of the heights is ',total_height
    print *,'Average height is', average_height
    print *,'Names    Height   BMI   Weights'
    do person=1,num_of_person
        print *, names(person), height(Person), bmi(person), weight(person)
    enddo

end program probch0903