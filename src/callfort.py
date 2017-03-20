#python3
#
# Jessica A Kelly
# March 2017
# working with f2py.
# goal is to test a simple fortran function call
# with a variable that is set in python and then
# used by the fortran code
#
# TODO: Need to test booleans.


#### PART 1 AS SIMPLE AS POSSIBLE
import numpy as np
import SomeMethods as f
def run_simple():
    #put some stuff here to run the fortan code
    totsim = 7
    print("in python totsim is", totsim)
    # note that need the module name here.
    totsim=f.simple_mod.return_totsim_plus1(totsim)
    print("in python now totsim is", totsim)

run_simple()
#### END PART 1

#### PART 4 more complicated compile
#### In-progress
"""
import my_sim_model as f2
def run_complex():
    # initalize values here
    # because we know what we will need
    file7 = "py_def_outfile.txt"
    totsim = 2
    maxbrack = 7
    # here need to define arrays to be column-major
    nbrack = np.array([7,7],order='F')
    sbrack = np.array([0, 7000, 22100, 53500, 111586.6, 242579.55, 243568.47],[0, 7000, 22100, 53500, 111586.6, 242579.55, 243568.47],order='F')
    mbrack = np.array([0, 14000, 44200, 89150, 135844.6, 242579.55, 274014.53],[0, 14000, 44200, 89150, 135844.6, 242579.55, 274014.53],order='F')
    hbrack = np.array([0, 10000, 29600, 76400, 123715.6, 242579.55, 258791.5],[0, 10000, 29600, 76400, 123715.6, 242579.55, 258791.5],order='F')
    print("more complex example")
    f2.my_sim_model.my_sim_main
run_complex()
"""

#### END PART 4
