# Test-F2py

Using MiCGeneric Fortran code combined with f2py in numpy to test building and calling Fortran functions from python.

And also trying out some other fortran methods that I'm borrowing from various places.

To try:
- http://websrv.cs.umt.edu/isis/index.php/F2py_example

## OSX
Get and install cython, numpy (and scipy for good measure)

```
pip3 install cython
pip3 install numpy
pip3 install scipy
```
For me, this results in f2py as an executable (but in the past it has been f2py3.5)

## Windows 7, 64 bit
Get and install numpy using pip. Get and install cython and scipy using http://www.lfd.uci.edu/~gohlke/pythonlibs/ because pip doesn't like to work.

Results in f2py.py being usable. At command line that is
```
python -m numpy.f2py [OPTIONS]
```
Otherwise it means updating <code>PATHEXT</code> to include .py
