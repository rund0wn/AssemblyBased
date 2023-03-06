#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=4:00:00
#SBATCH --job-name=prodigal_predict
#SBATCH --mem=200Gb
#SBATCH --mail-type=end

mkdir prodigal

module load prodigal

prodigal -i ${1}/scaffolds.fasta -p meta \
-o prodigal/${1}_prodigal.gff \
-a prodigal/${1}_proteins.fa \
-f gff
