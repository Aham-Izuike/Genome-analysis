#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 05:00:00
#SBATCH -J Flye_pacbio_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user ahamogueri@gmail.com

# Load modules
module load bioinfo-tools
module load Flye

# Your commands
flye --pacbio-raw /crex/proj/uppmax2024-2-7/Genome_Analysis/1_Zhang_2017/genomics_data/PacBio/m13102* --out-dir /home/izuike/output/flye_files/out_pacbio --genome-size 3m --threads 2
