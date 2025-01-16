import pandas as pd
import csv

# Define the path to your CSV file
csv_file_path = 'letter_filtered_repeatDel.csv'

# Initialize an empty list to store the data
raw_data = []

# Read the data from the CSV file
try:
    with open(csv_file_path, mode='r', encoding='utf-8') as file:
        reader = csv.reader(file)
        for row in reader:
            # Convert the row to the appropriate data types and append to raw_data
            raw_data.append((float(row[4]),float(row[6]) , float(row[8]), float(row[10])))
except FileNotFoundError as e:
    print(f"Error: {e}")
# Starting index value
start_index = 113369
    #4,6,8,10
# Process the data into the desired format
processed_data = []
for i, (per1, per2, per3,per4) in enumerate(raw_data, start=start_index):
    processed_data.append({
        "index": i,
        "per1": per1,
        "per2": per2,
        "per3": per3,
        "per4": per4,
        "per5":"0",
    })

# Convert the list of dictionaries to a DataFrame
df = pd.DataFrame(processed_data)

# Save the processed data to a CSV file
output_path = 'percentages_processed_data.csv'
df.to_csv(output_path, index=False)

# Print the resulting DataFrame for preview
print(df)
