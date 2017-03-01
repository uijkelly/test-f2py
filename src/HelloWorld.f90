! Second Small generic program. Will read from file, do something, and then print to a file
!
! Requires file called: HelloAgainInput.txt
! Outputs file called:  IAmHere.txt
!
! Jessica A. Kelly


PROGRAM HelloAgainWorldF90
  REAL, DIMENSION(:), ALLOCATABLE :: x ! array that we will read into
  INTEGER :: n 			! value that is read from file


  WRITE(*,*) "Hello Humans!"
  WRITE(*,*) "Starting to read file."

  OPEN(unit=99, file='HelloAgainInput.txt', status='old', action='read')
  READ(99,*), n 		!first element in the file is the number of elements in the array
  ALLOCATE(x(n))
  READ(99,*) x 			!now read in the array

  !do something to the array, like loop over it and multiply by 2
  DO i=0,n
     x(i) = x(i) * 2
  END DO

  WRITE(*,*) "Done my calculations."
  OPEN(unit=89, file='IAmHere.txt', status='replace', action='write')
  WRITE(89,*)x

  WRITE(*,*) "Results successfully written."

END PROGRAM HelloAgainWorldF90
