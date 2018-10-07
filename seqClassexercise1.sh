#As our script couldn't deal with lower-case sequences, we fixed it by convering the sequences to upper-case before analyzing them. 
#!/bin/bash
seq=$1
seq=$(echo $seq | tr a-z A-Z)  # upper-case convertion
if [[ $seq =~ ^[ACGTU]+$ ]]; then
  if [[ $seq =~ T ]]; then
    echo "The sequence is DNA"
  elif [[ $seq =~ U ]]; then
    echo "The sequence is RNA"
  else
    echo "The sequence can be DNA or RNA"
  fi
else
  echo "The sequence is not DNA nor RNA"
fi
#we'll check if it works and if it does we will stage and commit the changes
