# Test-F2py

Using MiCGeneric Fortran code combined with f2py in numpy to test building and calling Fortran functions from python.

And also trying out some other fortran methods that I'm borrowing from various places.

Installation below.

## What will this do?

f2py creates a CPython module -- essentially some C code that knows how to interpret Fortran. We keep the speed of the compiled code here! 

For specific notes on what was done in the code, see [HowIDidIt.md](https://github.com/uijkelly/test-f2py/blob/master/src/HowIDidIt.md)


## OSX
Get and install cython, numpy (and scipy for good measure)

```
pip3 install cython
pip3 install numpy
pip3 install scipy
```
For me, this results in f2py3.6 as an executable (f2py is there, but for python 2.7)

## Windows 7, 64 bit
Get and install numpy using pip. Get and install cython and scipy using http://www.lfd.uci.edu/~gohlke/pythonlibs/ because pip doesn't like to work.

Results in f2py.py being usable. At command line that is
```
python -m numpy.f2py [OPTIONS]
```
Otherwise it means updating <code>PATHEXT</code> to include .py
