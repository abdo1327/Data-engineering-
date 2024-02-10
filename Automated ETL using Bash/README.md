# Bash Automated Pipeline and ETL Process

This repository demonstrates how to make ETL and pipline run automatically using Bash scripts.

## Overview

The scripts here show how to automate some tasks. One script deals with getting weather data and writing it down. The other script handles backing up files and moving them somewhere else.

## Scripts

### 1. Weather.sh

This script gets weather data for Casablanca and writes it down. It writes both current and future temperatures in a file called `rx_poc.log`.

### 2. Backup.sh

This script copies files from one place, squashes them together, and puts them somewhere else. It checks if everything's okay before doing this.
