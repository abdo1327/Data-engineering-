#!/bin/bash

# Assuming your vehicle-data.csv file is in the same directory as this script
input_csv="vehicle-data.csv"

# Output file name
output_csv="csv_data.csv"

# Extracting specific fields from the CSV file
cut -d',' -f5,6,7 "$input_csv" > "$output_csv"
