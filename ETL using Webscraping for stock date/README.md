# Extracting and Visualizing Stock Data

This project demonstrates how to extract essential data from a dataset and display it, a necessary part of data science. By extracting stock data and revenue data, we can visualize the performance of Tesla and GameStop stocks over time.

## Project Description
This project utilizes the contributions of Azim Hirjani and  this project was a part of the final project for obtaining  my IBM Data Analytics certification.
## Data Extraction
- **Web Scraping**: Revenue data for Tesla and GameStop is extracted using web scraping techniques. BeautifulSoup, a Python library, is utilized to parse HTML data from web pages and extract relevant information.
- **yfinance Library**: Stock data for Tesla and GameStop is extracted using the `yfinance` library. This library provides a simple way to download historical market data from Yahoo Finance.

## Installation
- Install `yfinance` version 0.1.67: `pip install yfinance==0.1.67`
- Install `BeautifulSoup` version 4.10.0: `mamba install bs4==4.10.0 -y`
- Install `nbformat` version 4.2.0: `pip install nbformat==4.2.0`

## Usage
- Run the Jupyter Notebook file `ETL using Webscraping for stock date.ipynb` to execute the code.
- The notebook contains step-by-step instructions on extracting stock data, revenue data, and plotting graphs for Tesla and GameStop stocks.


## License
This project is licensed under the MIT License 
