step1: wget https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR1916152/SRR1916152
step2: install sratoolkit 
       fastq-dump SRR1916152
step3: insatll fastqc
       fastqc SRR1916152.fastq  
step4: install hisat2
       hisat2-build Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa 
       hisat2 --dta -t -p 8 -x ../../data/reference/yeast_reference -U ../../data/RNA-Seq/SRR1916152.fastq > SRR1916152.sam  
step5: install samtools
       samtools view SRR1916152.sam |less -S
       samtools view -bS SRR1916152.sam -o SRR1916152.bam 
       samtools sort SRR1916152_single.bam -o SRR1916152_single.srt.bam
       samtools flagstat SRR1916152_single.srt.bam 
       #输出
       #18692435 + 0 in total (QC-passed reads + QC-failed reads)
       #1663884 + 0 secondary
       #0 + 0 supplementary
       #0 + 0 duplicates
       #16845013 + 0 mapped (90.12% : N/A)

step6: install HTSeq
       htseq-count ../read_alignment/SRR1916152_single.sam ../../data/reference/Saccharomyces_cerevisiae.R64-1-1.55.gtf > SRR1916152_single.count.tab 
step7: 
