#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 03:00:00
#SBATCH -J Synteny
#SBATCH --mail-type=ALL
#SBATCH --mail-user ahamogueri@gmail.com


# Load modules
module load bioinfo-tools
module load blast

# code
blastn -query /home/izuike/output/flye_files/pilon/pilon_combined_genome/pilon.fasta \
-subject /home/izuike/output/reference_data/sequence.fasta
-out /home/izuike/project_1/Genome-analysis/analysis/7_synteny_comparison/synteny_result.txt \

-outfmt	6
