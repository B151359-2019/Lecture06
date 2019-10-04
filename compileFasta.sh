#!/bin/sh
#Compile fasta files into 1 file

files=$(ls - *.*.fasta)

for file in $files; do
  $file >> compilation.fasta  
done

for file in $files; do
  rm -f $file
done
