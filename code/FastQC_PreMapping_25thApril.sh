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
# fastqc -o /home/izuike/project_1/Genome-analysis/analysis/quality_control /home/izuike/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_*
fastqc -o /home/izuike/project_1/Genome-analysis/analysis/quality_control /home/izuike/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_*
