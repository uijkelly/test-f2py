! Another Fortran file this one with just a module and some methods
!
! Jessica A Kelly

module simple_mod
implicit none
contains


! subroutine with parameters that are expected.

SUBROUTINE return_totsim_plus1(totsim, totsim2)
  INTEGER, intent(in) ::	totsim
  integer,intent(out) ::  totsim2
  totsim2 = totsim + 1
  write(*,*) "Here I am in Fortran!"
  write(*,*) totsim2
  return
END SUBROUTINE return_totsim_plus1

! what about a function that contains inputs
! also, difference between subroutine and function?? functions return value,
! subroutines do not? roughly right?

!this function takes an input, multipies by 2 and returns value
function take_and_mult2(j) result(j2)
  intent(in)::j
  real::j2
  real:: j
  j2 = j * 2
end function take_and_mult2


end module simple_mod
