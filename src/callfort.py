#python3
#
# Jessica A Kelly
# March 2017
# working with f2py.
# goal is to test a simple fortran function call
# with a variable that is set in python and then
# used by the fortran code

import numpy as np
import SomeMethods as f
def run():
    #put some stuff here to run the fortan code
    totsim = 7
    print("totsim is", totsim)
    totsim=f.simple_mod.return_totsim_plus1(totsim)
    print("now totsim is", totsim)
run()
