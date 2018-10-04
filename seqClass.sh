#!/bin/bash
seq=$1 #per la sequencia que li diguis
seq=$(echo $seq | tr a-z A-Z)  # Note we just added this line
if [[ $seq =~ ^[ACGTU]+$ ]]; then # si es una de les bases
  if [[ $seq =~ T ]]; then #si te una t
    echo "The sequence is DNA" #imprimeix es dna
  elif [[ $seq =~ U ]]; then #si te una u 
#imprimeix es rna
    echo "The sequence is RNA"
  else
    echo "The sequence can be DNA or RNA" #sino digues que pot ser una o la altre
  fi
else
  echo "The sequence is not DNA nor RNA" # si té alguna lletra que no sigui base imprimeix qu eno es ni la una ni l'altre
fi
