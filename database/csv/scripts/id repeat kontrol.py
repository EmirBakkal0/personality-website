import csv
print("This program will check for repeated IDs in a CSV file.")

file_path = input("Enter the file path of the CSV file to check: (mbti_celebs.csv) ")
# Sample list of IDs to check
ids_to_check = ["1017944","325042","373045","417703","43711","74398","96795","107323","109500","120898","120902","120931","122580","130706","137111","147866","147875","147942","147953","148123","151900","154377","162457","162459","163473","167253","169598","169600","180274","187849","188355","191942","192537","193860","193886","198052","198056","202308","218854","148737","159779","163921","174335","174779","175017","180269","187847","188931","193894","196978","196979","202251","208947","218846","221848","222449","231024","231029","231030","231035","232852","249202","254982","276351","293607","293985","310124","322253","323162","325780","344767","363901","365090","374333","392210","393745","393748","420688","422143","430763","471808","525544","529856","537458","537459","550004","560308"]

row_content=[]
def find_repeated_ids(file_path, ids_to_check):
    id_occurrences = {id_: [] for id_ in ids_to_check}  # Initialize dictionary to keep track of ID occurrences

    # Read the CSV file
    with open(file_path, newline='', encoding='utf-8') as csvfile:
        reader = csv.reader(csvfile)
        headers = next(reader)  # Skip the header row if there's one

        for row_index, row in enumerate(reader):
            row_id = row[0]  # Assuming IDs are in the first column; adjust if necessary
            if row_id in id_occurrences:
                id_occurrences[row_id].append(row_index + 2)  # Track the row index (add 2 to account for header and zero indexing)
                row_content.append(row)

    # Find and return rows with repeated IDs
    repeated_ids = {id_: indices for id_, indices in id_occurrences.items() if len(indices) > 1}

    return repeated_ids

# Example usage
# file_path = 'mbti_celebs.csv'
repeated_rows = find_repeated_ids(file_path, ids_to_check)

for row in row_content:
    print(row)


if repeated_rows:
    for id_, rows in repeated_rows.items():
        print(f"ID {id_} is repeated in rows: {rows}")
else:
    print("No repeated IDs found.")
