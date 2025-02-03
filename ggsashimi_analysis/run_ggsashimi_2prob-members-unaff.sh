#!/usr/bin/env bash

# SLURM settings
#SBATCH --job-name=run_ggs
#SBATCH --output=/data/project/worthey_lab/projects/experimental_pipelines/gkaur/rnaseq/nf_rna_md_v3.10.1/ggsashimi/VMA21/manuscript/job%j.out
#SBATCH --error=/data/project/worthey_lab/projects/experimental_pipelines/gkaur/rnaseq/nf_rna_md_v3.10.1/ggsashimi/VMA21/manuscript/job%j.err
#SBATCH --cpus-per-task=6
#SBATCH --mem-per-cpu=16G
#SBATCH --partition=short
#SBATCH --mail-type=BEGIN,FAIL,END
#SBATCH --mail-user=gurpreetkaur@uabmc.edu

# Working directory: 
cd /data/project/worthey_lab/projects/experimental_pipelines/gkaur/rnaseq/nf_rna_md_v3.10.1/ggsashimi/VMA21/manuscript

# Load R module
module load R/4.1.0-foss-2021a

# ggsashimi location
r="/data/project/worthey_lab/projects/experimental_pipelines/gkaur/rnaseq/tools/ggsashimi" 

# genes.gtf location
g="/data/project/worthey_lab/temp_datasets_central/brandon/gencode_v40_trx/gencode.v40.annotation.gtf"

# 1) Create bam list file: input_bams_2prob-members-unaff.tsv

# 2) Create palette file: palette_2prob-members-unaff.tsv

# 3) Create gene coordinates file if more than 1 gene: input_genes.tsv  
## VMA21 affected transcript (NM_001017980.4) from Ensembl: https://useast.ensembl.org/Homo_sapiens/Transcript/Summary?db=core;g=ENSG00000160131;r=X:151396515-151409364;t=ENST00000330374  -> chrX:151397206-151409364
## VMA21 coordinates USCS (Representative transcript from RefSeq & GENCODE): https://genome.ucsc.edu/cgi-bin/hgSearch?search=vma21&db=hg38 -> chrX:151397206-151409364

# 4) Set required parameters: Mean coverage with -M10, font size 100, ggsashimi.py
python3 $r/ggsashimi.py -b input_bams_2prob-members-unaff_no-rep.tsv -P palette_2prob-members-unaff_no-rep.tsv -g $g \
-c chrX:151397206-151409364 \
-C 3 -O 3 --alpha 1 \
--base-size=100 --ann-height=5 --height=6 --width=80 -R 600 \
--shrink --fix-y-scale \
-o output_7_no-rep_mean-cov_M10_final_font100 \
-A mean \
-M 10

# 5) Submit job to Cheaha HPC cluster:
sbatch run_ggsashimi_2prob-members-unaff_out7.sh   
