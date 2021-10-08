#!/usr/bin/env bash

#read in variables
source common_variables.sh

#set lengths and offsets. These are the final ones which you will use for any DE analysis or codon occupancy.
#Use the plots generated by the periodicity and offset scripts to decide what values to set these at
lengths='29,30,31,32,33'
offsets='12,12,13,13,13'

#run counting script to generate <.counts> files
for filename in $filenames
do
counting_script.py -bam $BAM_dir/${filename}_pc_all_sorted.bam -fasta $pc_fasta -len $lengths -offset $offsets -out_file ${filename}_pc_all_L29-33_Off12-13.counts -out_dir $counts_dir &
done
wait



