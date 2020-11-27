# Header
from setuptools import setup, find_packages


setup(
    name='hbma312_training',
    version='2020',
    description='Introduction to plant modelling:the Functional Structural Plant Models.',
    long_description='Introduction to plant modelling:the Functional Structural Plant Models.',
    author='F. Boudon et al.',
    author_email='frederic.boudon@cirad.fr',
    url='https://github.com/openalea-training/hbma312_training/',
    license='Cecill-C',

    # pure python  packages
    packages=find_packages('src'),

    # python packages directory
    package_dir = { '' : 'src',},

    package_data={
        "": ['*.pyd', '*.so', '*.dylib','*.csv'],
    },

    include_package_data = True,
    zip_safe = False,
)
