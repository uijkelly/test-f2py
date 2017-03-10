! A Fortran Module that contains another module and a file of declarations
!
! First step is setting some inputs (will be done in python)
! next step will be doing some work
! and writing some output to a file.
!
! Jessica A Kelly

module my_sim_model
use my_declarations
use my_write
implicit none
contains

! normally would do this function in order to use the variables
! elsewhere in the fortran, but i'm going to do this in python instead
subroutine set_parameters
  write(*,*) "Do not do this here, doing in python first"
end subroutine set_parameters



end module my_sim_model
