#!/bin/bash

#Code for positional parameter use
#input=$1

for file in ./*.cds;
do cat $file | awk '{print $1}' | get_fasta_stats.pl -Tg > output.txt;
   transeq -sformat pearson -auto -filter $file > output.pep;
   echo "$file has been translated"
done

for file in ./output.pep;
    do get_fasta_stats.pl -Tg output.pep >> get_aa_fasta_stats.output
    echo "fasta stats on translated sequences have been created in get_aa_fasta_stats.output"
done
