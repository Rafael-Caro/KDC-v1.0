# ﻿KUG Dastgāhi Corpus - v1.0

This is the first version of the **KUG Dastgāhi Corpus** (**KDC v1.0**). It contains 213 recordings, 65 of them corresponding to the *darāmad* of the 7 *dastgāh* and 5 *āvāz* of Iranian dastgāhi music, which makes the core of the corpus. The recorded music was performed by four profesional musicians, namely Farahnaz Sahebghalam (*āvāz*, that is, voice), Reza Zalpour (*āvāz* and ney), Mohammad Khodadadi (ney) and Masoud Shaari (setār). KDC is created at the Institut for Ethnomusicology of the Universität für Musik und darstellende Kunst Graz (KUG), by Babak Nikzat and Rafael Caro Repetto.

## CONTENT

The `recordings` folder contains the recordings of performances of the *darāmad* of the 7 *dastgāh* and 5 *āvāz* (65 in total, with a duration of 100 min.), which is the core of the corpus. It also contains recordings of *šāhed* (59), *ist* (38), pitch-set (20) and radif (31, 32 min.) in separate folders. The ney and *āvāz* recordings where converted to `wav` in order to extract their pitch tracks using the `CREPE` algorithm.

The `annotations` folder contains manual annotations by collaborator musicians of characteristic melodic patterns. In order to ease their use in computational research, they are provided as csv files, containing the pattern label, the start and end time in the related recording, and when available, a note added by the annotator. The original annotations are also provided in a separate folder as `Praat TextGrid` files. The two letters at the end of the file name are the initials of the annotators:
RZ = Reza Zalpour
NB = Negar Bouban

## METADATA AND ANNOTATIONS

The `KDC-v1.0-Metadata.csv` file contains metadata and annotations for all recordings. For a particular *darāmad*, the musicians recorded at least one performance of it and the corresponding *šāhed*, and frequently also the *ist*, one or more radifs and the corresponding pitch-set. The `Shahed` column contains the pitch frequency in Hz of the *šāhed* of the corresponding performance recording. It was computed from the related *šāhed* recordings, and validated through aural examination by Reza Zalpour.

The metadata of all recordings are stored in MusicBrainz, and all files are named using their corresponding MusicBrainz ID. The annotations files in the "annotations" folder are named with the same MusicBrainz ID as their corresponding recordings. To access the MusicBrainz page of a particular recording, add its ID (that is, the file name without extension) to the URL: https://musicbrainz.org/recording/

## LICENSE

All the data, metadata and annotations in **KDC v1.0** are puublished under a Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode).

## USE

If you use **KDC v1.0**, please credit the authors by referencing the following paper (a `bib` file is provided in the root folder of this repository):

> Babak Nikzat and Rafael Caro Repetto. 2022. "KDC: an open corpus for computational research of dastgāhi music." In Proceedings of the 23rd International Society for Music Information Retrieval Conference, Bengaluru, India, Dec 4-8, 2022, edited by Preeti Rao, Hema Murthy, Ajay Srinivasamurthy, Rachel Bittner, Rafael Caro Repetto, Masataka Goto, Xavier Serra, and Marius Miron, 321-328. Bengaluru: International Society for Music Information Retrieval. https://doi.org/10.5281/zenodo.7316660
