import csv

# Define the input and output file paths
name=input("Enter the name of the file: ")
input_file_path = name+'.csv'
output_file_path = name+'_filtered'+ '.csv'

# Open the input file for reading
with open(input_file_path, 'r', newline='') as input_file:
    reader = csv.reader(input_file)
    
    # Open the output file for writing
    with open(output_file_path, 'w', newline='') as output_file:
        writer = csv.writer(output_file)
        
        # Iterate over each row in the input file
        for row in reader:
            # Join the row elements into a string and check for ',,0'
            if ',,' not in ','.join(row):
                writer.writerow(row)

print(f"Filtered CSV data has been written to {output_file_path}")
