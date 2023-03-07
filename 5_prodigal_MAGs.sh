#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=4:00:00
#SBATCH --job-name=prodigal_MAGs
#SBATCH --mem=200Gb

mkdir binned/prodigal_MAGs

module load prodigal

prodigal -i binned/${1}.fa -p meta \
-o binned/${1}_prodigal.gff \
-a binned/${1}_proteins.fa \
-f gff
