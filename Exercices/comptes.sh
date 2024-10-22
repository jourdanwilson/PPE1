#!/bin/bash

base_dir="/Users/jourdanwilson/Desktop/school/projet_encadre/plurital/Exercice1/ann"

for year in 2016 2017 2018; do
  # Search for lines containing "location" for the current year
  count=$(grep -r "Location" ${base_dir}/${year}/*/*.ann | wc -l)
  # Output the count
  echo "Year $year: $count Locations found"
done
