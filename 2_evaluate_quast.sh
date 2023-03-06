#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5
#SBATCH --time=05:00:00
#SBATCH --job-name=QUAST_eval
#SBATCH --mem=100Gb
#SBATCH --mail-type=end

mkdir quast

module load quast

quast.py ${1}/scaffolds.fasta -o quast/${1}_scaffolds
quast.py ${1}/contigs.fasta -o quast/${1}_contigs
