#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J Pilon
#SBATCH --mail-type=ALL
#SBATCH --mail-user ahamogueri@gmail.com

# Load modules
module load bioinfo-tools
module load Pilon

# Your commands

java -jar $PILON_HOME/pilon.jar --genome /home/izuike/output/flye_files/out_pacbio/assembly.fasta  --frags /home/izuike/output/flye_files/read_alignment/sorted_pacbio.bam --outdir /home/izuike/output/flye_files/pilon/pilon_combined_genome.fasta
