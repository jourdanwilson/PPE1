#!/bin/bash

year=$1
month=$2
num_locations=$3

# Set the base directory 
base_dir="/Users/jourdanwilson/Desktop/school/projet_encadre/plurital/Exercice1/ann"

# Construct the search pattern based on the year and month arguments
if [ "$year" = "*" ]; then
  year_pattern="*"
else
  year_pattern="$year"
fi

if [ "$month" = "*" ]; then
  month_pattern="*"
else
  month_pattern="$month"
fi

# grep -h Find all lines containing "Location" 
grep -h "Location" ${base_dir}/${year_pattern}/${month_pattern}/*.ann | \
#Extracts the third column where locations are or use the tab 
#the backslash means the command continues on the next line
cut -f3 | \
#Sorts the locations
sort | \
#counts unique occurrences
uniq -c | \
#Sorts the locations by frequency descending order
sort -nr | \
#Displays the top N locations based on the number user provides
head -n "$num_locations"
