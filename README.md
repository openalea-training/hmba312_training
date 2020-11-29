# Introduction to plant modelling:the Functional Structural Plant Models.
## Dates: 30 Nov. - 3 Dec. 2020

## Online: Zoom meeting

## Monday 30/11 : Prerequisite

Meeting [Zoom](https://umontpellier-fr.zoom.us/j/88213604500?pwd=NEpVb1FPditqWVJERnRhazBJeFlTZz09) 
 
* 9h - 12h00 : 
   - 15min : Class presentation - Frédéric Boudon (FB)
   - 15min : The modelling approach - Video - Christophe Pradal (CP)
   - 40min : Introduction to programming - Video - CP
      - The Python modelling language
         - types, control statements, functions, modules
         - numeric computation (numpy, scipy), data analysis (dataframe, pandas)
         - visualization (matplotlib)
      - Modeling environment (conda, notebooks)
    - 20min : Questions - CP
    - 1h30 : Exercises (CP, FB, CF)
         - see the [corresponding notebook](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/python/Python%20lecture.ipynb)
         - To launch the notebooks, launch in a conda console
             - `jupyter notebook "python/Python lecture.ipynb"`
             
* 14h00 - 17h00 : 
    - 45min : Plant Architecture - [Video](https://video.umontpellier.fr/video/7743-hbma312-architecture-des-plantes/) - Evelyne Costes (EC)
         - Plant organisation (meristems, phytomers, growth units, axis, crown, ...)
         - Ramification, Growth, Reiteration
         - Architectural Models
    - 15min : Questions - EC
    - 50min : Architecture phenotyping - Video - FB
         - [Part 1](https://video.umontpellier.fr/video/7564-hbma312-phenotypage-des-plantes-part-1/) - [Part 2](https://video.umontpellier.fr/video/7567-hbma312-phenotypage-des-plantes-part-2/) - [Part 3](https://video.umontpellier.fr/video/7566-hbma312-phenotypage-des-plantes-part-3/) - [Part 4](https://video.umontpellier.fr/video/7569-hbma312-phenotypage-des-plantes-part-4/) - [Part 5](https://video.umontpellier.fr/video/7568-hbma312-phenotypage-des-plantes-part-5/)
    - 15min : Questions - FB
    - 1h : Practical work and exercises : Analysis of LIDAR data - FB & Benoît Pallas (BP)
         - see the [notebook 1](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/laserreconstruction/Reconstruction%20from%20laser%20scans.ipynb) and [notebook 2](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/laserreconstruction/Analysis%20of%20laser%20scans.ipynb)
         - To launch the notebooks, launch in a conda console
             - `jupyter notebook "laserreconstruction/Reconstruction from laser scans.ipynb"`
             - `jupyter notebook "laserreconstruction/Analysis of laser scans.ipynb"`

## Tuesday 01/12 : Architecture modelling

Meeting [Zoom](https://umontpellier-fr.zoom.us/j/86375095759?pwd=MFc5T3Y2K1JuamlUT0NFTVpxN0x0UT09)

* 9h - 12h : 
   - 1h30 : The L-System formalism - Video - FB
      - [Part 1](https://video.umontpellier.fr/video/7717-hbma312-lsystems-part-1/) - [Part 2](https://video.umontpellier.fr/video/7718-hbma312-lsystems-part-2/) - [Part 3](https://video.umontpellier.fr/video/7720-hbma312-lsystems-part-3/) - [Part 4](https://video.umontpellier.fr/video/7721-hbma312-lsystems-part-4/)
      - Topological representations of plants with strings.
      - Turtle geometric interpretation.
      - Rules of production, decomposition, sensitive to contexts, to the environment ...
      - Fractals
   - 15min - Questions - FB
   - 1h15 : Practical work and exercises - FB & CP
      - see the [notebook 1](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/lsystem/L-systems.ipynb)
      - To launch the notebooks, launch in a conda console
           - `jupyter notebook lsystem/L-systems.ipynb`

* 14h00 - 17h00 : 
   - 45min : Simulating plants with L-systems - Video - FB
      - Rules of organ development using a thermal time model
      - Stochastic modelling of budburst
      - Branch geometry (empirical model, mechanistic model)
      
   - 15min : Questions - FB
   - 1H : Practical work and exercises - FB & BP
      - see the [notebook 1](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/archimodelling/ArchiModelling.ipynb), [notebook 2](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/archimodelling/Apple%20Tree%20Simulation%20-%20Organs.ipynb) and [notebook 3](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/archimodelling/Apple%20Tree%20Simulation%20-%20Architecture.ipynb)
      - To launch the notebooks, launch in a conda console
           - `jupyter notebook "archimodelling/ArchiModelling.ipynb"`
           - `jupyter notebook "archimodelling/Apple Tree Simulation - Organs.ipynb"`
           - `jupyter notebook "archimodelling/Apple Tree Simulation - Architecture.ipynb"`
   - 1h : Modelling project - FB, CP, RP, BP, CF

## Wednesday 02/12 : Modelling functioning 

Meeting [Zoom](https://umontpellier-fr.zoom.us/j/81761612590?pwd=dFVUZllCbmVicW9COHJNUlQyRi9DZz09)

* 9h - 12h : 
   - 45min : Ecophysiological processes. From crop model to FSPM  - Video - BP
        - [Part 1](https://video.umontpellier.fr/video/7753-hbma312-modelisation-du-fonctionnement-des-plantes-des-modeles-crop-au-fspm-part-1/) - [Part 2](https://video.umontpellier.fr/video/7752-hbma312-modelisation-du-fonctionnement-des-plantes-des-modeles-crop-au-fspm-part-2/)
        - Light interception, photosynthesis, Carbon Balance, Water Balance
        - Crop vs FSPM approaches
   - 15min : Questions - BP
   - 45min : Light modelling, RUE and photosynthesis - Video - Christian Fournier (CF)
   - 15min : Questions - CF
   - 1h : Practical work and exercises on light interception and photosynthesis - CF & RP

* 14h00 - 17h00 : 
   - 45min : Recent work on carbon allocation model / signaling in apple tree - Video - Benoit Pallas
   - 15min : Questions - BP
   - 1h : Practical work on carbon allocation model - BP & FB
   - 1h : Modelling project - FB, CP, RP, BP, CF

## Thursday 03/12 : Sensitivity analysis and project

Meeting [Zoom](https://umontpellier-fr.zoom.us/j/88035676587?pwd=MTNFTDJ4QjZ6WFRaMG5jY0NmdjRndz09)

* 9h - 12h :
   - 45min : Sensitivity analysis - [Video](https://video.umontpellier.fr/video/7681-hbma312-analyse-de-sensibilite/) - Raphael Perez (RP)
     - Concepts and methods
   - 15min : Questions
   - 1H : Practical work and exercises.  - RP & CF
   - 1h : Modelling project - FB, CP, RP, BP, CF

* 14h - 17h : 
   - 2H : Modelling project
   - 1H : Presentation of models first draft.

## Wednesday 16/12 Afternoon : Presentation of the modelling projects

 * 13h30 - 17h30 :
   - Each group will have to present its work for 15 minutes. It will be follow by 10 minutes of questions and 5 minutes of deliberation.

# Modelling project

During this training, some time is devoted to the realization of an architectural and functional model (called FSPM) of a fruiting tree. Some hypothesis on the model should be set and address using a sensitivity analysis on the model. A presentation of the model, its hypothesis, the related bibliography, the analysis of the model and the biological conclusion should be prepared for the examination day. The presentation should follow a **modelling approach** as presented in the first day. A critical point will be to present clearly the **research question** that the model will address, and its **hypotheses**.
The list of proposed fruiting trees to model with related information are given [here](./projets/README.md)

Groups of two should be constituted and each group will work on a different tree specie. To determine assignment, you need to fill the following [form](https://framadate.org/Ztv1NOQCl7Qy3FT3). If two people are already assigned to a tree specie, the specie is no more selectable.

# Modelling environment

## Conda Installation

[Conda](https://conda.io) is a package manager that can be installed on Linux, Windows, and Mac.
If you have not yet installed conda on your computer, follow these instructions:

[Conda Installation](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html). Follow instructions for Miniconda.

[Conda Download](https://docs.conda.io/en/latest/miniconda.html). Use the Python 3.8 based installation.

## Modules installation

### Create an environment named *training*
Launch a console (See Anaconda Prompt in Start menu on windows)

    conda create -n training -c fredboudon -c conda-forge python=3.8 openalea.pgljupyter openalea.plantscan3d alinea.caribu alinea.astk matplotlib pandas scipy git 

### Install sensitivity analysis packages:

    conda install -n training -c conda-forge r-irkernel R rpy2 r-rmarkdown r-car r-lme4 r-performanceanalytics r-agricolae r-lhs r-planor

### Activate the *training* environment:

    conda activate training

Under **R**, you can install everything using:
    
    install.packages('sensitivity' ) # TOCHECK is still necessary

## Installation of the training material

In a convenient directory, you will now download the training material using the following commands.

    cd /path/to/your/documents
    git clone https://github.com/openalea-training/hbma312_training.git
    cd hbma312_training
    python setup.py develop


