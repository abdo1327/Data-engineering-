#!/bin/bash

# Assuming your payment-data.txt file is in the same directory as this script
input_txt="payment-data.txt"

# Output file name
output_csv="fixed_width_data.csv"

# Extracting specific fields from the fixed-width file
awk '{print $NF, $(NF-1)}' "$input_txt" > "$output_csv"
