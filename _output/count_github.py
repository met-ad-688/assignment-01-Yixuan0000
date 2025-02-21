import pandas as pd

# Define the CSV files to process
files = ["question_tags.csv", "questions.csv"]  # Replace with actual file names
count = 0

# Count lines containing "GitHub" in each file
for file in files:
    df = pd.read_csv(file)
    count += df.apply(lambda row: row.astype(str).str.contains("GitHub", case=False).any(), axis=1).sum()

# Print the result
print(f"Total lines containing 'GitHub': {count}")