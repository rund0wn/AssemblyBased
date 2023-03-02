#!/bin/bash
#SBATCH --job-name=Kraken2
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=01:00:00
#SBATCH --mem=200GB

module load kraken2

mkdir classification

kraken2 --db /ibex/scratch/projects/c2014/rund/metagenomics_prelimdata/pilot/output \
--threads 6 --gzip-compressed --paired \
--report classification/${1}_kraken.txt \
--output classification/${1}_kraken.report \
${1}_R1.fastq.gz ${1}_R2.fastq.gz
