import pandas as pd

# Function to replace " " or "-" with "," in a CSV file
def replace_chars_in_csv(input_file, output_file):
    # Read the file as plain text
    with open(input_file, 'r') as file:
        content = file.read()
    
    # Replace " " and "-" with ","
    modified_content = content.replace(" ", ",").replace("-", ",")
    
    # Write the modified content to the output file
    with open(output_file, 'w') as file:
        file.write(modified_content)
    
    print(f"Replacements done. The modified file is saved at {output_file}")


# Call the function


# Example usage
input_file = 'temperaments_types_filtered_repeatDel.csv'
output_file = 'temparement-bolunuk.csv'

replace_chars_in_csv(input_file, output_file)

