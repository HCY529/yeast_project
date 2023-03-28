import sys

number_sample_list = sys.argv[1]
print(number_sample_list)
reference_file = "../../data/reference/"
fastq_file = "../../data/RNA-Seq/"

with open(number_sample_list) as gene_information:
    for line in gene_information:
        line = line.rstrip()
        number_sample = line.split('\t')
        number = number_sample[0]
        sample = number_sample[1]

        cmd_str = "wget wget https://sra-pub-run-odp.s3.amazonaws.com/sra/{number}/{number}\nfastq-dump {number}\nfastqc {number}\nhisat2 --dta -t -p 8 -x {reference_file}yeast_reference -U {fastq_file}{number}.fastq |samtools view -bS -|samtools sort - -o {sample}.srt.bam\nsamtools index {sample}.srt.bam".format(number = number,reference_file = reference_file,fastq_file = fastq_file, sample=sample)
        print(cmd_str)

