# Notes on what I did

## Resources
 - http://websrv.cs.umt.edu/isis/index.php/F2py_example
 - https://docs.scipy.org/doc/numpy-dev/f2py/
 - https://docs.scipy.org/doc/numpy/user/c-info.python-as-glue.html
 - https://sysbio.ioc.ee/projects/f2py2e/usersguide/#the-quick-and-smart-way
 - _High Performance Python_ by Micha Gorelick and Ian Ozsvald (O’Reilly). Copyright 2014 Micha Gorelick and Ian Ozsvald, 978-1-449-36159-4.
 - http://stackoverflow.com/questions/27270543/including-a-compiled-module-in-module-that-is-wrapped-with-f2py-minimum-working
 - http://csweb.cs.wfu.edu/~torgerse/Kokua/More_SGI/007-2361-009/sgi_html/ch01.html (general Compiling and Linking info)
## Details

**PART 1**

Straight compiling fortran and then importing to python and using subroutines.

_NOTE:_ Fortran functions get translated to all lower case. (But it could be changed, I think with an option --no-lower, will have to test)
```
f2py3.6 -c -m SomeMethods SomeMethods.f90
```

Then code in callfort.py for PART1. Note that we can send a parameter named totsim to the fortran code, modify the value and send the information back. It could get a little tricky as this gets more complicated. But that's the idea.

Output is below (totsim is 7 printed from python, inside fortran incremented to 8 and then back in python, now totsim is 8)
```
$ python3 callfort.py
totsim is 7
 Here I am in Fortran!
           8
now totsim is 8
```

**PART 2**

Signature files.

Generating the signature file
```
f2py3.6 -h SomeMethods.pyf -m SomeMethods SomeMethods.f90
```

Compiling the code with the signature file
```
f2py3.6 -c SomeMethods.pyf SomeMethods.f90
```
Same code in callfort.py executes.

**PART 3**

Distribution. To come later.

**PART 4**

A more complicated compile.

_NOTE:_ We can specify compiler, and options. Here specifying multiple files and compilation order does matter!

```

```
