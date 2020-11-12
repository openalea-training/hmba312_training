# Installation of training environment

## Conda Installation

[Conda](https://conda.io) is a package manager that can be installed on Linux, Windows, and Mac.
If you have not yet installed conda on your computer, follow these instructions:

[Conda Installation](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html). Follow instructions for Miniconda.

[Conda Download](https://docs.conda.io/en/latest/miniconda.html). Use the Python 3.8 based installation.

## Modules installation

### Create an environment named *training*
Launch a console (See Anaconda Prompt in Start menu on windows)

    conda create -n training -c fredboudon -c conda-forge -c R openalea.pgljupyter openalea.plantscan3d alinea.caribu alinea.astk matplotlib pandas scipy git 

### Activate the *training* environment:

    conda activate training

### Install sensitivity analysis packages:

    conda install -c conda-forge rstudio r-rmarkdown r-car r-lme4 r-performanceanalytics r-agricolae r-lhs r-planor

Under **R**, you can install everything using:
    
    install.packages('sensitivity' ) # TOCHECK is still necessary

## Installation of the training material

In a convenient directory, you will now download the training material using the following commands.

    cd /path/to/your/documents
    git clone https://github.com/openalea-training/hbma312_training.git


