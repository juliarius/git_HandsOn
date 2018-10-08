#Final version, it detects both, lower and upper cases and if there's T and U.
#!/bin/bash
seq=$1
seq=$(echo $seq | tr a-z A-Z)  # upper-case convertion
if [[ $seq =~ ^[ACGTU]+$ ]]; then
  if [[ $seq =~ T ]]; then
    if [[ $seq =~ U ]]; then  # detects if there's a sequence with both u nd t
      echo "The sequence is not DNA nor RNA"
    else
      echo "The sequence is DNA"
    fi
  elif [[ $seq =~ U ]]; then
    echo "The sequence is RNA"
  else
    echo "The sequence can be DNA or RNA"
  fi
else
  echo "The sequence is not DNA nor RNA"
fi
#we will stage and commit the changes
