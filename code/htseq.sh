#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 08:00:00
#SBATCH -J Feature_counting
#SBATCH --mail-type=ALL
#SBATCH --mail-user ahamogueri@gmail.com


# Load modules
module load bioinfo-tools
module load htseq

# my codes

# sed '/^##FASTA/Q' /home/izuike/output/prokka_files/genome_annotation_prokka.gff > /home/izuike/output/prokka_files/genome_annotation_nosequence.gff

htseq-count -f bam -r pos -s no -i ID -t CDS /home/izuike/output/bwa_RNA/serum_RNA/*.bam /home/izuike/output/prokka_files/genome_annotation_nosequence.gff  > /home/izuike/project_1/Genome-analysis/analysis/featurecounts.txt

