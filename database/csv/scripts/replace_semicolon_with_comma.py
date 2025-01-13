import csv

def replace_semicolon_with_comma(input_file, output_file):
    with open(input_file, mode='r', encoding='utf-8') as infile:
        reader = csv.reader(infile, delimiter=';')
        rows = [row for row in reader]
    
    with open(output_file, mode='w', encoding='utf-8', newline='') as outfile:
        writer = csv.writer(outfile, delimiter=',')
        writer.writerows(rows)

# Replace 'input.csv' with your input file name and 'output.csv' with your desired output file name
replace_semicolon_with_comma('celebs.csv', 'celebs2.csv')
