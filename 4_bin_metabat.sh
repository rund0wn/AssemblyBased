#!/bin/bash
#SBATCH --job-name=MetaBAT
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=03:00:00
#SBATCH --mem=100GB

module load metabat

mkdir binned

metabat -i ${1}/scaffolds.fasta -o binned/${1}_bins --unbinned
