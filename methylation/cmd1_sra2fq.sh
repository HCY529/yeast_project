wget -O 3bstrain1.sra https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR1916134/SRR1916134
wget -O set1rep1.sra https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR1916142/SRR1916142
wget -O EV1.sra https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR1916129/SRR1916129

fastq-dump 3bstrain1.sra &
fastq-dump EV1.sra &
fastq-dump set1rep1.sra &
wait

fastqc 3bstrain.fastq &
fastqc EV1.fastq &
fastqc set1rep1.fastq &
wait

