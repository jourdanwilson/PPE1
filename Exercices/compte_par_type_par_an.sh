#!/bin/bash

entity_type=$1

# Iterate over the years and call compte_par_type.sh for each year
for year in 2016 2017 2018; do
  count=$(./compte_par_type.sh $year $entity_type)
  echo "Year $year: $count $entity_type entities found"
done
