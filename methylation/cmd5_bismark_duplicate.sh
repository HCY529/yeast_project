deduplicate_bismark -s --bam EV1_bismark_hisat2.bam > EV1_bismark_duplicate.log &
deduplicate_bismark -s --bam 3bstrain1_bismark_hisat2.bam > 3bstrain1_bismark_duplicate.log &
deduplicate_bismark -s --bam set1rep1_bismark_hisat2.bam > set1rep1__bismark_duplicate.log &
wait
