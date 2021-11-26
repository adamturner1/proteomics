#!/bin/bash
module load beagle
for c in {1..22}; do
sbatch -A cphg-millerlab -p standard -t 6-12:00:00 -N 1 -n 20 --mem=80000 \
--wrap "java -jar $EBROOTBEAGLE/beagle.21Apr21.304.jar gt=UVA_protein_new_samples_chr${c}.vcf.gz ref=/project/cphg-millerlab/reference_genomes/1000G_Phase3/b37_brefs/chr${c}.1kg.phase3.v5a.b37.bref3 out=UVA_phase_imp_b37_new_${c} impute=true gp=true seed=149827"
done
