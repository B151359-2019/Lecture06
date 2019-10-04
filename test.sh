#!/bin/sh
#script downloading all accession fasta data from ncbi
cnt=0
while read acc; do
  wget -q "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=protein&id=$acc&strand=1&rettype=fasta&retmode=text"
  cnt=$((cnt+1))
  if test $cnt > 9 ; then
    break
  fi
done < 579cox.accessions

echo "done"
