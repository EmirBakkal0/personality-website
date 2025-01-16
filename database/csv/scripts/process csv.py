import pandas as pd
import csv

# Define the path to your CSV file
csv_file_path = 'instinctual_variant_types_filtered_repeatDel.csv'

# Initialize an empty list to store the data
raw_data = []

# Read the data from the CSV file
try:
    with open(csv_file_path, mode='r', encoding='utf-8') as file:
        reader = csv.reader(file)
        for row in reader:
            # Convert the row to the appropriate data types and append to raw_data
            raw_data.append((int(row[0]), row[1], int(row[2])))
except FileNotFoundError as e:
    print(f"Error: {e}")
# Starting index value
start_index = 69762
    
# Process the data into the desired format
processed_data = []
for i, (celebid, letters, totalvotes) in enumerate(raw_data, start=start_index):
    processed_data.append({
        "index": i,
        "celebid": celebid,
        "pid": 7,  # Constant pid value
        "letter1": letters[0],
        "letter2": letters[1],
        "letter3": letters[2],
        "letter4": letters[3],
        "letter5": letters[4],
        "totalvotes": totalvotes,
    })

# Convert the list of dictionaries to a DataFrame
df = pd.DataFrame(processed_data)

# Save the processed data to a CSV file
output_path = 'instinctuall_processed_data.csv'
df.to_csv(output_path, index=False)

# Print the resulting DataFrame for preview
print(df)
