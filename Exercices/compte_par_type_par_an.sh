#!/bin/bash

# Validate number of arguments (expecting 1: entity type)
[ $# -ne 1 ] && echo "Usage: $0 <entity_type>" && exit 1

# Validate entity type is not empty
[ -z "$1" ] && echo "Error: Entity type cannot be empty." && exit 1


entity_type=$1

# Iterate over the years and call compte_par_type.sh for each year
for year in 2016 2017 2018; do
  count=$(./compte_par_type.sh $year $entity_type)
  echo "Year $year: $count $entity_type entities found"
done
