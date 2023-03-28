#wget wget https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR1916152/SRR1916152
#fastq-dump SRR1916152
#fastqc SRR1916152
#hisat2 --dta -p 8 -x ../../data/reference/yeast_reference -U ../../data/RNA-Seq/SRR1916152.fastq |samtools view -bS -|samtools sort - -o EV_3.srt.bam
#samtools index EV_3.srt.bam
#wget wget https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR1916153/SRR1916153
#fastq-dump SRR1916153
#fastqc SRR1916153
#hisat2 --dta -p 8 -x ../../data/reference/yeast_reference -U ../../data/RNA-Seq/SRR1916153.fastq |samtools view -bS -|samtools sort - -o EV_4.srt.bam
samtools index EV_4.srt.bam
#wget wget https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR1916154/SRR1916154
#fastq-dump SRR1916154
#fastqc SRR1916154
#hisat2 --dta -p 8 -x ../../data/reference/yeast_reference -U ../../data/RNA-Seq/SRR1916154.fastq |samtools view -bS -|samtools sort - -o DNMT3B_2.srt.bam
samtools index DNMT3B_2.srt.bam
#wget wget https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR1916155/SRR1916155
#fastq-dump SRR1916155
#fastqc SRR1916155
#hisat2 --dta -p 8 -x ../../data/reference/yeast_reference -U ../../data/RNA-Seq/SRR1916155.fastq |samtools view -bS -|samtools sort - -o DNMT3B_3.srt.bam
samtools index DNMT3B_3.srt.bam
#wget wget https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR1916156/SRR1916156
#fastq-dump SRR1916156
#fastqc SRR1916156
#hisat2 --dta -p 8 -x ../../data/reference/yeast_reference -U ../../data/RNA-Seq/SRR1916156.fastq |samtools view -bS -|samtools sort - -o DNMT3B_4.srt.bam
samtools index DNMT3B_4.srt.bam
