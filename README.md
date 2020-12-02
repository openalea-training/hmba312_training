# Introduction to plant modelling:the Functional Structural Plant Models.
## Dates: 30 Nov. - 3 Dec. 2020

## Online: [Zoom](https://umontpellier-fr.zoom.us/j/88213604500?pwd=NEpVb1FPditqWVJERnRhazBJeFlTZz09)

## Live Tutorials on Binder: [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/openalea-training/hbma312_training/HEAD)

## Monday 30/11 : Prerequisite

 
* 9h - 12h00 : 
   - 15min : [Class presentation](./pdf_lessons/0-presentation-cours.pdf) - Frédéric Boudon (FB)
   - 15min : [The modelling approach](https://github.com/openalea-training/hbma312_training/blob/master/pdf_lessons/1_modelling_approach_pradal.pdf) - [Video](https://video.umontpellier.fr/video/7759-hbma312-approche-de-modelisation/) - Christophe Pradal (CP)
   - 1h : [Introduction to programming](https://github.com/openalea-training/hbma312_training/blob/master/pdf_lessons/2_python_pradal.pdf) - [Video](https://video.umontpellier.fr/video/7772-hbma312-le-language-de-modelisation-python/) - CP
      - The Python modelling language
         - types, control statements, functions, modules
         - numeric computation (numpy, scipy), data analysis (dataframe, pandas)
         - visualization (matplotlib)
    - 15mn: Modeling environment (conda, notebooks) and installation
    - 1h15 : Exercises (CP, FB, CF)
         - see the [corresponding notebook](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/python/PythonLecture.ipynb)
         - To launch the notebooks, launch in a conda console
             - `jupyter notebook "python/PythonLecture.ipynb"`
             
* 14h00 - 17h00 : 
    - 45min : [Plant Architecture](./pdf_lessons/3-Architecture_Vegetale_module_BFP_english_slides.pdf) - [Video](https://video.umontpellier.fr/video/7743-hbma312-architecture-des-plantes/) - Evelyne Costes (EC)
         - Plant organisation (meristems, phytomers, growth units, axis, crown, ...)
         - Ramification, Growth, Reiteration
         - Architectural Models
    - 15min : Questions - EC
    - 50min : [Architecture phenotyping](./pdf_lessons/4-phenotyping.pdf) - Video - FB
         - [Part 1](https://video.umontpellier.fr/video/7564-hbma312-phenotypage-des-plantes-part-1/) - [Part 2](https://video.umontpellier.fr/video/7567-hbma312-phenotypage-des-plantes-part-2/) - [Part 3](https://video.umontpellier.fr/video/7566-hbma312-phenotypage-des-plantes-part-3/) - [Part 4](https://video.umontpellier.fr/video/7569-hbma312-phenotypage-des-plantes-part-4/) - [Part 5](https://video.umontpellier.fr/video/7568-hbma312-phenotypage-des-plantes-part-5/)
    - 15min : Questions - FB
    - 1h : Practical work and exercises : Analysis of LIDAR data - FB & Benoît Pallas (BP)
         - see the [notebook 1](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/laserreconstruction/Reconstruction%20from%20laser%20scans.ipynb) and [notebook 2](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/laserreconstruction/Analysis%20of%20laser%20scans.ipynb)
         - To launch the notebooks, launch in a conda console
             - `jupyter notebook "laserreconstruction/Reconstruction from laser scans.ipynb"`
             - `jupyter notebook "laserreconstruction/Analysis of laser scans.ipynb"`

## Tuesday 01/12 : Architecture modelling


* 9h - 12h : 
   - 1h30 : [The L-System formalism](./pdf_lessons/5-Lsystems.pdf) - Video - FB
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
      - [Part 1](https://video.umontpellier.fr/video/7817-hbma312-modelisation-de-larchitecture-des-fruitiers-part-1/) - [Part 2](https://video.umontpellier.fr/video/7818-hbma312-modelisation-de-larchitecture-des-fruitiers-part-2/) 
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

* 9h - 12h : 
   - 45min : Ecophysiological processes. From crop model to FSPM  - Video - BP
        - [Part 1](https://video.umontpellier.fr/video/7753-hbma312-modelisation-du-fonctionnement-des-plantes-des-modeles-crop-au-fspm-part-1/) - [Part 2](https://video.umontpellier.fr/video/7752-hbma312-modelisation-du-fonctionnement-des-plantes-des-modeles-crop-au-fspm-part-2/)
        - Light interception, photosynthesis, Carbon Balance, Water Balance
        - Crop vs FSPM approaches
   - 15min : Questions - BP
   - 45min : Modelling Light and photosynthesis: Christian Fournier (CF)
        - [Introduction](./pdf_lessons/7-0_light_phothosynthesis_intro.pdf) - [Video](https://video.umontpellier.fr/video/7867-hbma312-light-modelling-rue-and-photosynthesis-part-1/) - CF
        - [Light](./pdf_lessons/7-1_modelling_light.pdf) - [Video](https://video.umontpellier.fr/video/7885-hbma312-light-interception/) - CF
        - [Photosynthesis](./pdf_lessons/7-2_modelling_photosynthesis.pdf) - [Video](https://video.umontpellier.fr/video/7884-hbma312-photosynthese/) - CF
   - 15min : Questions - CF
   - 1h : Practical work and exercises on light interception and photosynthesis - CF & RP
        - To launch the notebooks, launch in a conda console
           - `jupyter notebook "light/"`

* 14h00 - 17h00 : 
   - 45min : Recent work on carbon allocation model / signaling in apple tree - Video - Benoit Pallas
        - [Part 1](https://video.umontpellier.fr/video/7780-hbma312-allocation-du-carbone-et-signalisation-part-1/) - [Part 2](https://video.umontpellier.fr/video/7782-hbma312-allocation-du-carbone-et-signalisation-part-2/) - [Part 3](https://video.umontpellier.fr/video/7784-hbma312-allocation-du-carbone-et-signalisation-part-3/)   
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
         - see the [notebook 1](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/sensitivityanalysis/TD_SensitivityAnalysis_Part1.ipynb) and [notebook 2](https://nbviewer.jupyter.org/github/openalea-training/hbma312_training/blob/master/sensitivityanalysis/TD_SensitivityAnalysis_Part2.ipynb)
         - To launch the notebooks, launch in a conda console
             - `jupyter notebook "sensitivityanalysis/TD_SensitivityAnalysis_Part1.ipynb"`
             - `jupyter notebook "sensitivityanalysis/TD_SensitivityAnalysis_Part2.ipynb"`
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

### Zoom session for projects:

- Meeting [Zoom](https://umontpellier-fr.zoom.us/j/88213604500?pwd=NEpVb1FPditqWVJERnRhazBJeFlTZz09) Projet Mango
- Meeting [Zoom](https://umontpellier-fr.zoom.us/j/86375095759?pwd=MFc5T3Y2K1JuamlUT0NFTVpxN0x0UT09) Projet Palm
- Meeting [Zoom](https://umontpellier-fr.zoom.us/j/81761612590?pwd=dFVUZllCbmVicW9COHJNUlQyRi9DZz09) Projet Peach
- Meeting [Zoom](https://umontpellier-fr.zoom.us/j/88035676587?pwd=MTNFTDJ4QjZ6WFRaMG5jY0NmdjRndz09) Project Grape Vine
- Meeting [Zoom](https://umontpellier-fr.zoom.us/j/88329455776?pwd=NVl3bkJaMk9haFd4d3BQTXA5b3Jqdz09) Project Kiwi Vine


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

To update the training material during the training

    cd /path/to/your/documents/hbma312_training
    git pull


