##I've used nano to create a new script named as seqClassexercise1.sh, we copied the initial content of seqClass.sh 
#!/bin/bash
seq=$1
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
# after saving and closing  i'll give execution permissions with chmod +x seqClassexercise1.sh
#we'll check if it works and if it does we will stage and commit the changes
