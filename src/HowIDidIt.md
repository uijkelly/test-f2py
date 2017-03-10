# Notes on what I did

## Resources
 - http://websrv.cs.umt.edu/isis/index.php/F2py_example
 - https://docs.scipy.org/doc/numpy-dev/f2py/
 - https://docs.scipy.org/doc/numpy/user/c-info.python-as-glue.html

## Details

**PART 1**
Straight compiling fortran and then importing to python and using subroutines.
_NOTE:_ Fortran functions get translated to all lower case.
```
f2py3.6 -c -m SomeMethods SomeMethods.f90
```

Then code in callfort.py for PART1. Note that we can send a parameter named totsim to the fortran code, modify the value and send the information back. It could get a little tricky as this gets more complicated. But that's the idea.

**PART 2**
Signature files.
