#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 01:00:00
#SBATCH -J NGS_assignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user ahamogueri@gmail.com

module load bioinfo-tools
module load quast
quast.py -o /home/izuike/output/spades_files/spades_eval /home/izuike/output/spades_files/scaffolds.fasta
