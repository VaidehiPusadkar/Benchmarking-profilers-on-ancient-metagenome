
Code used to perform the simulations and profilers used for the study "Benchmarking Metagenomic Classifiers on Simulated Ancient and Modern Metagenomic Data"
This repository contains two folders.
1. Simulation -
This folder contains the commands to simulate ancient metagenome data with different damage patterns.
The repository includes four simulations:
Simulation-1, which accounts for damage based on deamination only.
Simulation-2, which incorporates both deamination and damage based on fragment length.
Simulations 3 and 4, consider deamination, fragment length, and modern human or microbial contamination.

These simulations were conducted using Gargammel. To run these simulations, your input should consist of three folders:
   - `bact`: This folder should contain microbial species data.
   - `cont`: This folder should contain sequences from modern human or microbial contaminants.
   - `endo`: This folder should contain sequences of endogenous ancient human DNA.

These scripts can be used to generate 5 million (specified by `-n`) single-stranded metagenome reads (specified by `-ss`) on a HiSeq 2500 Illumina run. The rates of deamination, fragment length, and contamination can be adjusted using the options `-damage`, `-l`, and `-comp`, respectively.   

2. Profiler_run
   
   
   


