#!/bin/bash

# Assuming your CSV, TSV, and fixed-width files are in the same directory as this script
csv_file="csv_data.csv"
tsv_file="tsv_data.csv"
fixed_width_file="fixed_width_data.csv"

# Output file name
output_file="extracted_data.csv"

# Consolidating data using the paste command
paste "$csv_file" "$tsv_file" "$fixed_width_file" > "$output_file"
