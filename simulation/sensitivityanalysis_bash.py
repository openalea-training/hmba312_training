from openalea.lpy import *

def fruits_id(lscene):
  return [i for i,mod in enumerate(lscene) if mod.name == 'Fruit']

def process(params = {'INSERTION_ANGLE' : 45 }):
    l = Lsystem('sensitivityanalysis.lpy')
    lstring = l.iterate()
    lscene = l.sceneInterpretation(lstring)
    totalleafarea = l.totalleafarea
    totalleafnb = l.totalleafnb
    return totalleafarea, totalleafnb


if __name__ == '__main__':
    process()