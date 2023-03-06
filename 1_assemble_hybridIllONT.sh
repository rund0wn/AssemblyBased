#!/bin/bash
#SBATCH --job-name=hSPAdes
#SBATCH --partition=batch
#SBATCH -e hSPAdes-%J.err
#SBATCH -N1
#SBATCH --cpus-per-task=18
#SBATCH --time=2-00:00:00
#SBATCH --mem=400GB

module load spades

spades.py --meta \
-1 ${1}_trimmed_R1.fastq.gz \
-2 ${1}_trimmed_R2.fastq.gz \
--nanopore SRR8351023_1.fastq.gz \
--nanopore SRR8073713_1.fastq.gz \
-o ${1}_IllONT_spadesout \
--memory 400 \
--threads 18
