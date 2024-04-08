#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J spades_assembly 
#SBATCH --mail-type=ALL 
#SBATCH --mail-user ahamogueri@gmail.com 
 
# Load modules 
module load bioinfo-tools 
module load spades

# Your commands

spades.py \
-1 /home/izuike/1_Zhang_2017/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz \
-2 /home/izuike/1_Zhang_2017/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz \
--nanopore /home/izuike/1_Zhang_2017/genomics_data/Nanopore/E745_all.fasta.gz \
-k 55 -o /home/izuike/output/spades_files
