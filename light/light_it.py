"""Some macro / utilities to run light simpulation on pgl/lpy virtual scene """
import pandas
import numpy
from alinea.caribu.CaribuScene import CaribuScene
from alinea.caribu.light import light_sources

from openalea.lpy import Lsystem



def run_lsystem(lsystem='leafy.lpy', parameters=None):
    if parameters:
        lsys = Lsystem(lsystem, {'parameters':parameters})
    else:
        lsys = Lsystem(lsystem)
    lstring = lsys.iterate()
    lscene = lsys.sceneInterpretation(lstring)
    return lsys, lstring, lscene


def illuminate(scene, sky=None, sun=None, pattern=None, scene_unit='cm'):
    if sky is None and sun is None:
        light = None
    else:
        light = []
    if sky is not None:
        light += light_sources(*sky)
    if sun is not None:
        light += light_sources(*sun)
    infinite = False
    if pattern is not None:
        infinite = True
    cs = CaribuScene(scene, light=light,scene_unit=scene_unit, pattern=pattern)
    raw, agg = cs.run(direct=True, simplify=True, infinite=infinite)
    return cs, raw['Ei'], pandas.DataFrame(agg)


def leaf_irradiance(df, lstring, leaf_name='Leaf', aggregate=False):
    leaves = [pid for pid,m in enumerate(lstring) if m.name == leaf_name]
    if len(leaves) > 0:
        df = df.loc[df.index.isin(leaves), :]
        df.loc[:, 'leaf_rank'] = range(1, len(leaves) + 1)
    if aggregate:
        df = df.apply(numpy.mean)
    return df
