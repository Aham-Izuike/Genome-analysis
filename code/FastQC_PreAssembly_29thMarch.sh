#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J FastQC
#SBATCH --mail-type=ALL
#SBATCH --mail-user ahamogueri@gmail.com

# Load modules
module load bioinfo-tools
module load FastQC

# Your commands
fastqc -o /home/izuike/output/fastqc_files E745-1.L500_SZAXPI015146-56_1_clean.fq.gz
