! A Fortran Module that contains another module and a file of declarations
!
! First step is setting some inputs (will be done in python)
! next step will be doing some work
! and writing some output to a file.
!
! Jessica A Kelly

! think that this needs to be a program, and not a module.

module my_sim_model
use my_declarations
use my_write
implicit none
contains

! normally would do this function in order to use the variables
! elsewhere in the fortran, but i'm going to do this in python instead
! these variables declared in my_declarations
subroutine set_parameters
  write(*,*) "Do not do this here, doing in python first"
  ! but include for testing, want to try and compile separately in gfortran first
  ! so i know there aren't any errors.
  file7 = "py_def_outfile.txt"
  totsim = 2
  maxbrack = 7
end subroutine set_parameters

subroutine calc_bracket

end subroutine

subroutine my_sim_main
  call calc_bracket
  call writeit ! in my_write
end subroutine my_sim_main

end module my_sim_model
