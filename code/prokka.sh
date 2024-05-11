#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:00:00
#SBATCH -J Annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user ahamogueri@gmail.com


# Load modules
module load bioinfo-tools
module load prokka

# my codes

prokka \
--outdir /home/izuike/output/prokka_files --force \
--prefix genome_annotation_prokka \
--genus Enterococcus \
--species faecium \
--strain E745 \
--gram pos \
/home/izuike/output/flye_files/pilon/pilon_combined_genome/pilon.fasta
