#!/bin/bash
#BSUB  -g /dspencer/nextflow
#BSUB  -G compute-dspencer
#BSUB  -q dspencer
#BSUB  -e %J.err 
#BSUB  -o %J.log
#BSUB  -We 2:00
#BSUB  -n 2
#BSUB  -M 12GB
#BSUB  -R "select[mem>=16000] span[hosts=1] rusage[mem=16000]"
#BSUB  -a "docker(mdivr/centos:v0.1)"

# set Nextflow home to current directery to avoid writing into user home directery
export NXF_HOME=${PWD}/.nextflow
nextflow m-mahgoub/nextflow-nanopore -profile ris -c $1