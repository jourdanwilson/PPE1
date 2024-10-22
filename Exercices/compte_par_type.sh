#!/bin/bash

# Validate number of arguments (expecting 2: year and entity type)
[ $# -ne 2 ] && echo "Usage: $0 <year> <entity_type>" && exit 1

# Validate the year (must be 4 digits or "*")
[[ ! "$1" =~ ^[0-9]{4}$ && "$1" != "*" ]] && echo "Error: Year must be a four-digit number or '*'." && exit 1

# Validate entity type is not empty
[ -z "$2" ] && echo "Error: Entity type cannot be empty." && exit 1

#arguments
year=$1
entity_type=$2

# Set the base directory 
base_dir="/Users/jourdanwilson/Desktop/school/projet_encadre/plurital/Exercice1/ann"

count=$(grep -r "$entity_type" ${base_dir}/${year}/*/*.ann | wc -l)

# Output only the count
echo $count
