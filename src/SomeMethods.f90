! Another Fortran file this one with just a module and some methods
!
! Jessica A Kelly

module simple_mod
implicit none
contains
  ! This one takes no inputs
  SUBROUTINE THETIME
    integer(8) :: i
    character(len=30) :: date

	INTEGER IFIRST/0/
	INTEGER ITOTOLD/0/
	INTEGER ITOT/0/
	INTEGER IDIFF/0/
	INTEGER*2 IHR/0/
	INTEGER*2 IMIN/0/
	INTEGER*2 ISEC/0/
	INTEGER*2 I100TH/0/
	ITOTOLD = ITOT

    !CALL GETTIM(IHR,IMIN,ISEC,I100TH)
	i = time8()
	call ctime(i,date)
    print *, ' ', date

	!ITOT = IHR*3600+IMIN*60+ISEC

	!IF (IFIRST.EQ.1) THEN
	!	IDIFF = ITOT-ITOTOLD
	!	IHR = IDIFF/3600
	!	IMIN = (IDIFF-IHR*3600)/60
	!	ISEC = IDIFF-IHR*3600-IMIN*60
	!
	!	PRINT 20, IHR,IMIN,ISEC

	!	20 FORMAT(1X,'CHANGE IN TIME:  ',I2,':',I2,':',I2)
	!END IF

	IFIRST=1

END SUBROUTINE THETIME

! what about a function that contains inputs
! also, difference between subroutine and function?? functions return value,
! subroutines do not? roughly right?

!this function takes an input, multipies by 2 and returns value
function take_and_mult2(j) result(j2)
  intent(in)::j
  real::j2
  j2 = j * 2
end function take_and_mult2


end module simple_mod
