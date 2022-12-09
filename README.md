<br>

# Nanopore WGS analysis pipeline  

nextflow-nanoproe is a Nextflow pipeline for analysis of Nanopore Whole Genome Sequencing.


## Pipeline summary
1. Basecalling ([`Guppy`](https://nanoporetech.com/nanopore-sequencing-data-analysis))




## Usage
### Input files:
1. fast5 raw reads provided as a full path for the directory containing all fast5 files, either in a configuration file or as (--input path/to/fast5) command line parameter.
2. Path for reference genome fasta file, either in a configuration file or as (--genome path/to/genome.fasta) command line parameter.


# Running pipeline in local environment
##### This is typically for running in personal computer for testing/development purpose.
###### Requirements for running locally:
1. **[Nextflow >= 20.07.1](https://www.nextflow.io/)**
2. **[Docker](https://www.docker.com/)**

Clone the repository and run main.nf file (should be cloned)

```bash
git clone https://github.com/dhslab/nextflow-nanopore.git
cd nextflow-nanopore/
nextflow run main.nf -profile local  -c config/test_local.config
```

# Running pipeline in LSF cluster (configured to WashU RIS cluster environment)
Run directly from GitHub
```bash
nextflow run main.nf -profile ris -c config/test_ris.config
```
or clone the repository and run main.nf file
```bash
git clone https://github.com/dhslab/nextflow-nanopore.git
cd nextflow-nanopore/
LSF_DOCKER_VOLUMES="/storage1/fs1/dspencer/Active:/storage1/fs1/dspencer/Active /scratch1/fs1/dspencer:/scratch1/fs1/dspencer $HOME:$HOME" bsub < lsf_launch.sh
```
#### Output from test run should be generated in a directory named "results"
