# Create directories and load required modules
mkdir QC
module load fastqc
module load fastp

# Run fastQC on read files (quality control metrics/graphs)
fastqc ${1}_1.fastq.gz -o QC
fastqc ${1}_2.fastq.gz -o QC

# Run fastp on read files (trimming)
fastp -i ${1}_1.fastq.gz -I ${1}_2.fastq.gz \
-o ${1}_trimmed_R1.fastq.gz -O ${1}_trimmed_R2.fastq.gz \
-q 30
