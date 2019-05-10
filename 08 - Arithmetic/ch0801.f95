program ch0801
implicit none 
! 
! Example of a Fortran program to calculate net pay
! given an employee's gross pay
! 

real :: gross_wage, net_wage, tax 
real :: tax_rate = 0.25
integer :: personal_allowance = 4800
character*60 :: their_name 

    print *, 'Input employees name'
    read *, their_name

    print *, 'Input Gross wage'
    read *, gross_wage
    
    tax = (gross_wage-personal_allowance)*tax_rate 
    net_wage = gross_wage - tax 

    print *, 'Employee: ', their_name
    print *, 'gross pay:', gross_wage 
    print *, 'tax: ', tax 
    print *, 'net pay', net_wage 

end program ch0801