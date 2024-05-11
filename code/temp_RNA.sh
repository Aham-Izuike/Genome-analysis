#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 08:00:00
#SBATCH -J Read_alignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user ahamogueri@gmail.com


# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools

# my script
#bwa index /home/izuike/output/flye_files/pilon/pilon_combined_genome/pilon.fasta

bwa mem /home/izuike/output/flye_files/pilon/pilon_combined_genome/pilon.fasta \
/home/izuike/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_1.fastq.gz \
/home/izuike/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_2.fastq.gz > alignment_RNA_seq_paired_72.sam


samtools view -b -o /home/izuike/output/bwa_RNA/bh_RNA/alignment_RNA_seq_paired_72.bam alignment_RNA_seq_paired_72.sam

rm alignment_RNA_seq_paired_72.sam

bwa mem /home/izuike/output/flye_files/pilon/pilon_combined_genome/pilon.fasta \
/home/izuike/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_1.fastq.gz \
/home/izuike/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_2.fastq.gz > alignment_RNA_seq_paired_73.sam


samtools view -b -o /home/izuike/output/bwa_RNA/bh_RNA/alignment_RNA_seq_paired_73.bam alignment_RNA_seq_paired_73.sam

rm alignment_RNA_seq_paired_73.sam

bwa mem /home/izuike/output/flye_files/pilon/pilon_combined_genome/pilon.fasta \
/home/izuike/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_1.fastq.gz \
/home/izuike/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_2.fastq.gz > alignment_RNA_seq_paired_74.sam


samtools view -b -o /home/izuike/output/bwa_RNA/bh_RNA/alignment_RNA_seq_paired_74.bam alignment_RNA_seq_paired_74.sam

rm alignment_RNA_seq_paired_74.sam
