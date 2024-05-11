#!/bin/bash -l
#SBATCH -A uppmax2024-2-7
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J Read_alignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user ahamogueri@gmail.com


# Load modules
module load bioinfo-tools
module load minimap2/2.4
module load bwa/0.7.17
module load samtools

# my script

illumina_reads="/home/izuike/1_Zhang_2017/genomics_data/Illumina"
flye_assembly="/home/izuike/output/flye_files/out_pacbio/assembly.fasta"
OUTPUT_DIR_TMP="/home/izuike/TMP_files"
OUTPUT_DIR="/home/izuike/output/flye_files/read_alignment"

if [ ! -d "$OUTPUT_DIR_TMP" ]; then
  mkdir -p "$OUTPUT_DIR_TMP"
  echo "Created directory: $OUTPUT_DIR_TMP"
else
  echo "Directory already exists: $OUTPUT_DIR_TMP"
fi

bwa index "$flye_assembly" 
bwa mem "$flye_assembly" "${illumina_reads}/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz" "${illumina_reads}/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz" > "${OUTPUT_DIR_TMP}/aligned.sam"

# minimap2 -ax map-ont "$flye_assembly" "$pacbio_reads" > "${OUTPUT_DIR_TMP}/aligned.sam"


samtools view -b "${OUTPUT_DIR_TMP}/aligned.sam" | samtools sort -o "${OUTPUT_DIR}/sorted_pacbio.bam"
samtools index "${OUTPUT_DIR}/sorted_pacbio.bam"

rm "${OUTPUT_DIR_TMP}/*.sam"

