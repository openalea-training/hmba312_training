# Introduction to plant modelling:the Functional Structural Plant Models.
## Dates: 30 Nov. - 3 Dec. 2020

## Online: Teams meeting

## Monday 30/11 : Prerequisite

* 9h - 12h00 : 
   - 15min : Class presentation - Frédéric Boudon (FB)
   - 15min : The modelling approach - Video - Christophe Pradal (CP)
   - 40min : Introduction to programming - Video - FB ou/et CP
      - The Python modelling language
         - types, control statements, functions, modules
         - numeric computation (numpy, scipy), data analysis (dataframe, pandas)
         - visualization (matplotlib)
      - Modeling environment (conda, notebooks)
    - 20min : Questions - FB ou/et CP
    - 1h30 : Exercises (FB, CP, CF, ??)
         - see the [corresponding notebook](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/python/Python%20lecture.ipynb)

* 14h00 - 17h00 : 
    - 45min : Plant Architecture - Video - Evelyne Costes (EC)
         - Plant organisation (meristems, phytomers, growth units, axis, crown, ...)
         - Ramification, Growth, Reiteration
         - Architecctural Models
    - 15min : Questions - EC
    - 45min : Architecture phenotyping - Video - FB
    - 15min : Questions - FB
    - 1h : Practical work and exercises : Analysis of LIDAR data - FB & Benoît Pallas (BP)
         - see the [notebook 1](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/laserreconstruction/Reconstruction%20from%20laser%20scans.ipynb) and [notebook 2](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/laserreconstruction/Analysis%20of%20laser%20scans.ipynb)
         
## Tuesday 01/12 : Architecture modelling

* 9h - 12h : 
   - 1h : Presentation of the L-System formalism - Video - FB
      - Topological representations of plants with strings.
      - Turtle geometric interpretation.
      - Rules of production, decomposition, sensitive to contexts, to the environment ...
      - Fractals
   - 15min - Questions - FB
   - 2h : Practical work and exercises - FB & CP
      - see the [notebook 1](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/simulation/L-systems.ipynb)
   
* 14h00 - 17h00 : 
   - 45min : Simulating plants with L-systems - Vidéo - FB
      - Rules of organ development using a thermal time model
      - Stochastic modelling of budburst
      - Branch geometry (empirical model, mechanistic model)
   - 15min : Questions - FB
   - 1H : Practical work and exercises - FB & BP
      - see the [notebook 1](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/simulation/Apple%20Tree%20Simulation%20-%20Organs.ipynb) and [notebook 2](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/simulation/Apple%20Tree%20Simulation%20-%20Architecture.ipynb)
   - 1h : Modelling project - FB, CP, RP, BP, CF

## Wednesday 02/12 : Modelling functioning 

* 9h - 12h : 
   - 45min : Ecophysiological processes. From crop model to FSPM  - Vidéo - BP
        - Light interception, photosynthesis, Carbon Balance, Water Balance
        - Crop vs FSPM approaches
   - 15min : Questions - BP
   - 45min : Modèles de lumière, RUE et de photosynthèse - Vidéo - Christian Fournier (CF)
   - 15min : Questions - CF
   - 1h : Practical work and exercises on light interception and photosynthesis - CF & RP

* 14h00 - 17h00 : 
   - 45min : Carbon allocation model / Signaling - Vidéo - Benoit Pallas
   - 15min : Questions - BP
   - 1h : Practical work on carbon allocation model - BP & FB
   - 1h : Modelling project - FB, CP, RP, BP, CF

## Thursday 03/12 : Sensitivity analysis and project

* 9h - 12h :
   - 45min : Sensitivity analysis - Vidéo - Raphael Perez (RP)
     - Design of experiments
     - Sensitivity analysis methods
   - 15min : Questions
   - 1H : Practical work and exercises.  - RP & CF
   - 1h : Modelling project - FB, CP, RP, BP, CF

* 14h - 17h : 
   - 2H : Modelling project
   - 1H : Presentation of models first draft.


# Modelling project

During this training, some time is devoted to the realization of an architectural and functional model (called FSPM) of a fruiting tree. Some hypothesis on the model should be set and address using a sensitivity analysis on the model. A presentation of the model, its hypothesis, the related bibliography, the analysis of the model and the biological conclusion should be prepared for the examination day.
The list of proposed fruiting trees to model with related information are given [here](./projets/README.md)

# Modelling environment

## Conda Installation

[Conda](https://conda.io) is a package manager that can be installed on Linux, Windows, and Mac.
If you have not yet installed conda on your computer, follow these instructions:

[Conda Installation](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html). Follow instructions for Miniconda.

[Conda Download](https://docs.conda.io/en/latest/miniconda.html). Use the Python 3.8 based installation.

## Modules installation

### Create an environment named *training*
Launch a console (See Anaconda Prompt in Start menu on windows)

    conda create -n training -c fredboudon -c conda-forge openalea.pgljupyter openalea.plantscan3d alinea.caribu alinea.astk matplotlib pandas scipy git 

### Install sensitivity analysis packages:

    conda install -n training -c conda-forge r-irkernel R rpy2 rstudio r-rmarkdown r-car r-lme4 r-performanceanalytics r-agricolae r-lhs r-planor

### Activate the *training* environment:

    conda activate training

Under **R**, you can install everything using:
    
    install.packages('sensitivity' ) # TOCHECK is still necessary

## Installation of the training material

In a convenient directory, you will now download the training material using the following commands.

    cd /path/to/your/documents
    git clone https://github.com/openalea-training/hbma312_training.git


