#!/bin/bash
#SBATCH --job-name=nanoplot
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=00:20:00
#SBATCH --mem=20GB

module load nanoplot

NanoPlot -t 6 --fastq ${1}.fastq.gz \
--outdir QC \
--prefix ${1}
