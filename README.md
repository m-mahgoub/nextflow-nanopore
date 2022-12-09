<br>

# Nanopore WGS analysis pipeline  

nextflow-nanoproe is a Nextflow pipeline for analysis of Nanopore Whole Genome Sequencing.


## Pipeline summary
1. Basecalling ([`Guppy`](https://nanoporetech.com/nanopore-sequencing-data-analysis))




## Usage
### Input files:
1. fast5 raw reads provided as a full path for the directory containing all fast5 files, either in a configuration file or as (--input path/to/fast5) command line parameter.
2. Path for reference genome fasta file, either in a configuration file or as (--genome path/to/genome.fasta) command line parameter.

# Running pipeline in LSF cluster (configured to WashU RIS cluster environment)

Run directly from GitHub (for testing: download and save test_ris.config file to launch directory)
```bash
nextflow run m-mahgoub/nextflow-nanopore -profile ris -c config/test_ris.config
```
or clone the repository and run main.nf file
```bash
git clone https://github.com/dhslab/nextflow-nanopore.git
cd nextflow-nanopore/
LSF_DOCKER_VOLUMES="/storage1/fs1/dspencer/Active:/storage1/fs1/dspencer/Active /scratch1/fs1/dspencer:/scratch1/fs1/dspencer $HOME:$HOME" bsub < lsf_launch.sh
```
#### Output from test run should be generated in a directory named "results"
