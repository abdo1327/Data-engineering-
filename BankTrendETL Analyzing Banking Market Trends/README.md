# BankData ETL Pipeline

## Overview

The BankData ETL (Extract, Transform, Load) Pipeline is a project designed to gather data about the largest banks, transform it to enhance insights, and load it into a database for analysis. 

## Features

- **Data Extraction:** use web scraping techniques to extract data from a webpage containing information about the largest banks.
- **Data Transformation:** Enhances the extracted data by converting market  values to different currencies using exchange rate information in URL that contains CSV file with the diffrent rates.
- **Data Loading:** Saves the transformed data into CSV file and a  database for analysis.

## Usage

1. **Setup:**  call Python libraries (`requests`, `pandas`, `BeautifulSoup`, `sqlite3`) and create the required functions.
2. **Execution:** Run the functions and start the ETL pipeline.
3. **Output:** Monitor progress and and save the results in "code_log.txt" file.

## Dependencies 
- Python
- pandas
- requests
- BeautifulSoup
- sqlite3

## License

This project is licensed under the MIT License.
