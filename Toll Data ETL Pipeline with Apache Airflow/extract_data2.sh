#!/bin/bash

# Assuming your tollplaza-data.tsv file is in the same directory as this script
input_tsv="tollplaza-data.tsv"

# Output file name
output_csv="tsv_data.csv"

# Extracting specific fields from the TSV file
cut -f1,2,3 "$input_tsv" > "$output_csv"
