# Instructions for Running the SLCSP Calculation Script

## Script Description
The `calculate_slcsp.rb` script is designed to calculate the Second Lowest Cost Silver Plan (SLCSP) for a set of ZIP codes. It reads data from three CSV files (`plans.csv`, `zips.csv`, and `slcsp.csv`), all of which are assumed to be in the same directory as the script. The script filters for silver plans, associates them with ZIP codes, and computes the SLCSP, outputting the results to `slcsp_output.csv`.

## Prerequisites
- **Ruby Installed:** This script is written in Ruby. Make sure Ruby is installed on your system. You can check your Ruby installation by running `ruby -v` in the command line.

## Running the Script
1. **Clone the Repository:**

```bash
git clone 
cd
```

2. **Execute the Script:**
In the terminal, navigate to the directory containing the script and CSV files. Run the script with the following command:

`ruby calculate_slcsp.rb`

3. **View the Output:**
After running the script, check the slcsp_output.csv file in the same directory for the output.

## Additional information:

With more time, I would further consider the performance of the SLCSP script. For example, pre-sorting the rates would reduce computation lookup. I would also add error handling to make the script more robust and to manage potential issues with file reading/writing or data inconsistencies. I would implement unit tests to cover various scenarios, including edge cases. Additionally, further refactoring could be done to enhance readability and maintainability. I enjoyed working on this project. Thank you for your time in looking at my work!