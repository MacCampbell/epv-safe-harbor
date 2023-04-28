#!/bin/bash
#
#SBATCH --time=0-10 # days-hours
#SBATCH --mem=10G # Memory pool for all cores (see also --mem-per-cpu)
#SBATCH --output=outputs/101/d-%A-%a.out # File to which STDOUT will be written
#SBATCH --error=outputs/101/d-%A-%a.err # File to which STDERR will be written


start=`date +%s`
hostname


export baseP=/home/$USER/epv-safe-harbor/
export seqP=${baseP}/data/raw
export outP=${baseP}/outputs/101
export cwd=${baseP}/
export tmpP=$cwd/tmp

if [ ! -d "${outP}" ]; then
   mkdir ${outP}
fi

if [ ! -d "${tmpP}" ]; then
   mkdir ${tmpP}
fi

name=`head -n ${SLURM_ARRAY_TASK_ID} meta/samples.txt | tail -1`

module load diamond/2.0.15

#diamond blastx -d  reference/diamond/seqs -q data/raw/Control-1_R1_001.fastq.gz -o outputs/101/Control-1-diamond

call="diamond blastx \
-d reference/diamond/seqs \
-q $seqP/${name}_R1_001.fastq.gz \
-o $outP/${name}-diamond"

echo $call
eval $call

