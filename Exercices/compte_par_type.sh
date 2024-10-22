#!/bin/bash

#arguments
year=$1
entity_type=$2

# Set the base directory 
base_dir="/Users/jourdanwilson/Desktop/school/projet_encadre/plurital/Exercice1/ann"

count=$(grep -r "$entity_type" ${base_dir}/${year}/*/*.ann | wc -l)

# Output only the count
echo $count
