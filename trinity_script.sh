cat << EOF | qsub -V -S /usr/bin/bash -q large -l mem=120G,walltime=144:00:00 -N trinity -jeo -e /cbcbhomes/abelew/scratch/assembly_spirogyra/trinity.stdout -
#!/bin/env bash
##source /cbcb/lab/nelsayed/scripts/dotbashrc
cd /cbcbhomes/abelew/scratch/assembly_spirogyra
Trinity --seqType fq --min_contig_length 600 --normalize_reads --trimmomatic --max_memory 90G --left /cbcbhomes/abelew/scratch/assembly_spirogyra/Spirogyra_all_R1.fastq.gz --right /cbcbhomes/abelew/scratch/assembly_spirogyra/Spirogyra_all_R2.fastq.gz --CPU 3 2>./trinity.out 1>&2

EOF
