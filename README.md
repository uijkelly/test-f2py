# Test-F2py

Using MiCGeneric Fortran code combined with f2py in numpy to test building and calling Fortran functions from python.


## OSX
Get and install cython, numpy (and scipy for good measure)

```
pip install cython
pip install numpy
pip install scipy
```
For me, this results in f2py3.5 as an executable (and not f2py as in all documentation) 

## Windows 7, 64 bit
Get and install numpy using pip. Get and install cython and scipy using http://www.lfd.uci.edu/~gohlke/pythonlibs/ because pip doesn't like to work.

Results in f2py.py being usable. At command line that is
```
python -m numpy.f2py [OPTIONS]
```
Otherwise it means updating <code>PATHEXT</code> to include .py


To try:
- http://websrv.cs.umt.edu/isis/index.php/F2py_example
