# National Highways Data Collection Project

## Overview 
The project aims to collect national highways data saved in various locations and formats. To achieve this, an automated pipeline using Apache Airflow will be implemented. This pipeline will perform the following tasks:

- Extracting data from a CSV file
- Extracting data from a TSV file
- Extracting data from a fixed-width file
- Transforming the data to a uniform format and consolidating it into one file
- Loading the transformed data into the staging area

Each step is executed through different Bash scripts, which will be invoked by the Python code responsible for creating the pipeline.

## Files 
- `ETL_toll_data_pipeline.py`: This is the Apache Airflow pipeline that will call the other DAG files and orchestrate the ETL process.
- `extract_data1.sh`: This Bash script extracts specific fields from a CSV file named "vehicle-data.csv" and saves them to a new CSV file named "csv_data.csv". It selects columns 5, 6, and 7 from the input CSV file using the `cut` command and delimiter ',' (comma).
- `extract_data2.sh`: This Bash script extracts specific fields from a TSV (Tab-Separated Values) file named "tollplaza-data.tsv" and saves them to a new CSV file named "tsv_data.csv". It selects columns 1, 2, and 3 from the input TSV file using the `cut` command and delimiter '\t' (tab).
- `extract_data3.sh`: This Bash script extracts specific fields from a fixed-width file named "payment-data.txt" and saves them to a new CSV file named "fixed_width_data.csv". It uses the `awk` command to print the last field and the second-to-last field from each line of the input file, based on space separation.
- `consolidate_data.sh`: This Bash script consolidates data from CSV, TSV, and fixed-width files into a single CSV file named "extracted_data.csv". It uses the `paste` command to merge corresponding lines from each input file into a single line in the output file.
- `load_data.sh`: This Bash script transforms the "vehicle_type" field in a CSV file named "extracted_data.csv" located in the staging directory. It converts the vehicle types to capital letters and saves the modified data to a new CSV file named "transformed_data.csv" in the same directory. The `awk` command is used with the `toupper` function to perform the transformation.

## License 
The project is under the MIT license.
