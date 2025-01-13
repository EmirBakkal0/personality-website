import csv

# Define the input and output file paths
name=input("Enter the name of the file: ")
input_file_path = name+'.csv'
output_file_path = name+'_repeatDel'+ '.csv'

# Initialize a set to store seen values from the first column
seen = set()

# Open the input file for reading
with open(input_file_path, 'r', newline='') as input_file:
    reader = csv.reader(input_file)
    
    # Open the output file for writing
    with open(output_file_path, 'w', newline='') as output_file:
        writer = csv.writer(output_file)
        
        # Iterate over each row in the input file
        for row in reader:
            # Check if the value in the first column is already seen
            if row[0] not in seen:
                # If not seen, add it to the set and write the row to the output file
                seen.add(row[0])
                writer.writerow(row)
            elif row[0] in seen:
                print(row[0])

print(f"Filtered CSV data has been written to {output_file_path}")
