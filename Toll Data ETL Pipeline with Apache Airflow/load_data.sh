#!/bin/bash

# Assuming your extracted_data.csv file is in the staging directory
input_csv="staging/extracted_data.csv"

# Output file name
output_csv="staging/transformed_data.csv"

# Transforming the vehicle_type field to capital letters
awk 'BEGIN {FS=OFS=","} { $4 = toupper($4) }1' "$input_csv" > "$output_csv"
