#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J Trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user ahamogueri@gmail.com

# Load modules
module load bioinfo-tools
module load trimmomatic/0.39

# Your commands
java -jar $TRIMMOMATIC_ROOT/trimmomatic.jar PE -threads 2 E745-1.L500_SZAXPI015146-56_1_clean.fq.gz E745-1.L500_SZAXPI015146-56_2_clean.fq.gz /home/izuike/output/E745-1.L500_SZAXPI015146-56_1_clean_paired.fq.gz /home/izuike/output/E745-1.L500_SZAXPI015146-56_1_clean_unpaired.fq.gz /home/izuike/output/E745-1.L500_SZAXPI015146-56_2_clean_paired.fq.gz /home/izuike/output/E745-1.L500_SZAXPI015146-56_2_clean_unpaired.fq.gz TRAILING:28 MINLEN:75
