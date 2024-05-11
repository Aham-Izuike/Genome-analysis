#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J mummerplot 
#SBATCH --mail-type=ALL 
#SBATCH --mail-user ahamogueri@gmail.com 
 
# Load modules 
module load bioinfo-tools 
module load MUMmer//4.0.0rc1

# Your commands
cd /home/izuike/project_1/Genome-analysis/analysis/mummer_evaluation

# mkdir numcer_output
# mkdir mummerplot_flye_output

# nucmer /home/izuike/output/reference_data/sequence.fasta /home/izuike/output/flye_files/out_pacbio/assembly.fasta -p /home/izuike/project_1/Genome-analysis/analysis/mummer_evaluation/numcer_output/nucmer_efaecium_output

mummerplot --png --prefix=/home/izuike/project_1/Genome-analysis/analysis/mummer_evaluation/mummerplot_flye_output/mummerplot_flye_output /home/izuike/project_1/Genome-analysis/analysis/mummer_evaluation/numcer_output/nucmer_efaecium_output.delta



