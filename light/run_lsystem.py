""" Run a lpy model from python with parameters 

the following lines should be included in lpy file, after the definition of the model parameters
used in interactive mode

try:
  parameters = parameters
except NameError:
  parameters = {}
for p_name in parameters:
  globals()[p_name] = parameters[p_name]
"""



from openalea.lpy import Lsystem


def run_lsystem(lsystem='simple_maize_nolight.lpy', parameters=None):
    if parameters:
        lsys = Lsystem(lsystem, {'parameters':parameters})
    else:
        lsys = Lsystem(lsystem)
    lstring = lsys.iterate()
    lscene = lsys.sceneInterpretation(lstring)
    return lsys, lstring, lscene