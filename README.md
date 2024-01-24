# Script Description
The `calculate_slcsp.rb` script is designed to calculate the Second Lowest Cost Silver Plan (SLCSP) for a set of ZIP codes. It reads data from three CSV files (`plans.csv`, `zips.csv`, and `slcsp.csv`), all of which are assumed to be in the same directory as the script. The script filters for silver plans, associates them with ZIP codes, and computes the SLCSP, outputting the results to `slcsp_output.csv`. Please see `COMMENTS.md` for steps to execute this script. 

## Additional information

With more time, I would further consider the performance of the SLCSP script. For example, pre-sorting the rates would reduce computation during lookup. I would also add error handling to make the script more robust and to manage potential issues with file reading/writing or data inconsistencies. I would implement unit tests to cover various scenarios, including edge cases. Additionally, further refactoring could be done to enhance readability and maintainability. I enjoyed working on this project. Thank you for your time and looking at my work!

