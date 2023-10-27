# ﻿Preliminary analyses on KUG Dastgāhi Corpus - v1.0

This folder contains the results of the preliminary analyses performed on the first version of the **KUG Dastgāhi Corpus** (**KDC v.10**), also available in this repository, as well as the code used for obtaining them.

The performed analyses are:

-   pitch track extraction
-   pitch histograms
-   vibrato analysis

These results were published in the following paper:

> Babak Nikzat and Rafael Caro Repetto. 2022. "KDC: an open corpus for computational research of dastgāhi music." In Proceedings of the 23rd International Society for Music Information Retrieval Conference, Bengaluru, India, Dec 4-8, 2022, edited by Preeti Rao, Hema Murthy, Ajay Srinivasamurthy, Rachel Bittner, Rafael Caro Repetto, Masataka Goto, Xavier Serra, and Marius Miron, 321-328. Bengaluru: International Society for Music Information Retrieval. <https://doi.org/10.5281/zenodo.7316660>

If you use either the data, the results or the code published in this repository, we kindly ask you to cite this paper (a `bib` file is provided in the root folder of this repository).

## Content

The `code` folder contains a Jupyter Notebook, `KDC-ISMIR2022.ipynb`, with the code used to perform the aforementioned analyses on **KDC v1.0**. It also includes the `intonation.py` script published in GitHub (<https://github.com/gopalkoduri/intonation>) along with the paper:

> Gopala Krishna Koduri, Vignesh Ishwar, Joan Serrà, and Xavier Serra. 2014. “Intonation analysis of rāgas in carnatic music.” Journal of New Music Research 43 (1): 73–94.

Small modifications where introduced to this script that only affect plotting, to suit the needs for the analyses of the **KDC v1.0**.

A short Praat script is also included, `tier2csv.praat`, to convert the original manual annotations in Praat to csv files (as included in **KDC v1.0**).

Finally, the `requirements.txt` file includes the required dependencies to run the code (see [Running the code](#Running-the-code) section below).

The `histograms` folder contains pitch histograms for all *āvāz* and ney recordings, as well as aggregated pitch histograms for all *āvāz* and ney recordings of the same *dastgāh*. Pitch histograms are computed both with their full pitch range or folded into one octave. In the first case, `-PH` is added to the file name, and in the second case, `-PHF` is added to the file name. Pitch is always given in cents from the *šāhed*.

The `pitchtracks` folder contains the results of running the `CREPE` algorithm on all *āvāz* and ney recordings, filtered by a confidence threshold of 0.7 (this can be changed in the code). The original results are available in the `original-files` folders.

The `vibrato` folder contains the results of running the `Vibrato` algorithm available in `Essentia` on all the available pitch tracks. Two csv files are generated for each recording, one for vibrato frequency and one for vibrato extent. A plot is also created for each recording, in which the detected vibrato frequency and extent are aligned with the pitch track.

## Running the code

To run the code it is required to use `Python 3` and `Jupyter` (<https://jupyter.org/>), as well as to install the dependencies listed in the `requirements.txt` file by running the command

`pip install -r .\\requirements.txt`

In order to run the code for vibrato analysis, the `Essentia` library (<https://essentia.upf.edu/>) is required. Please follow the instructions in its website for installation. For Windows users, installing `Essentia` might be cumbersome, therefore we suggest using the `MIR-toolbox-docker` image (<https://github.com/MTG/MIR-toolbox-docker>), wich requires installing `Docker` <https://www.docker.com/>. Once the `MIR-toolbox-docker` image is built following the instructions, the `Jupyter Notebook` can be accessed by opening the `PowerShell`, moving to the folder that contains the `analyses` folder (were the `run.sh` is stored), and run the command:

`.\\run.sh`

As indicated in the `MIR-toolbox-docker` instructions, "you can access the notebook at <http://localhost:8888>, use the password mir to log in."

## License

The data contained in this folder are published under a Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (<https://creativecommons.org/licenses/by-nc-nd/4.0/>).

The code contained in this folder is published under a GNU Affero General Public License v3.0 (<https://www.gnu.org/licenses/agpl-3.0.html>).
