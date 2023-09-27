
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

The metagenome profilers were assessed on simulated metagenomic samples and were grouped based on their algorithm for taxonomic assignment. 
DNA-to-DNA comparison methods include Kraken2 (version 2.1.3), KrakenUniq, (version 1.0.2), and Bracken (version 2.5.0), which match metagenomic reads to the DNA sequences in the microbial database. 

Kaiju (version 1.8.2) represents the DNA-to-protein profiler, which compares each of the six-frame translations of metagenomic reads to protein sequences in the microbial database. 
The database of Kaiju was downloaded from https://kaiju.binf.ku.dk/server, and we further downloaded the RefSeq database (dated 02-26-2021). 

mOTUs (version 2.6.1) and Metaphlan4(version 4.0.4) represent marker-based profilers, which align metagenomic reads to marker sequences unique to different microbial taxa in the database. 
The script (classifiers_run_command.sh) includes the commands for the following tasks:
1. **Adaptor Removal for Single-End Reads**: The script provides instructions for removing adaptors from single-end reads.

2. **Profiling on Simulation Reads**: Running each profiler on all the reads generated in the simulations.

3. **Obtaining Species and Genus Level Relative Abundance**: lastly, calculating relative abundance at both the species and genus levels from the generated data.
