#!/bin/bash
# this is for hisat2 batch alignment
for i in SRR1916152 SRR1916153 SRR1916154 SRR1916155 SRR1916156
do
hisat2 --dta -t -p 8 -x ../../data/reference/yeast_reference \
-U ../../data/RNA-Seq/"$i".fastq \
> "$i".sam 
done

