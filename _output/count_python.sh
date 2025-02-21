#!/bin/bash

# Count the number of lines containing "python" in question_tags.csv
count_tags=$(grep -i "python" question_tags.csv | wc -l)

# Count the number of lines containing "python" in questions.csv
count_questions=$(grep -i "python" questions.csv | wc -l)

# Print the results
echo "Number of lines containing 'python' in question_tags.csv: $count_tags"
echo "Number of lines containing 'python' in questions.csv: $count_questions"