import pandas as pd
import csv

result = []

################################
period = 'APR/MAY-2023'
mode = 'REG'
sem = '4'
################################


with open('results.csv', 'r') as file:
    csv_data = csv.reader(file)
    headers = next(csv_data)[1:-1]  # Extract column headers (SUB_Code) and ignore the first and last columns
    for row in csv_data:
        pin_no = row[0]
        # sem = row[-1]
        marks = row[1:-1]  # Extract the marks for the SUB_Code columns
        for i, header in enumerate(headers):
            sub_code = header
            mark = int(marks[i])
            remark = 'Pass' if mark >= 35 else 'Fail'
            result.append([pin_no, sub_code, sem, mark, period, mode, remark])

headers.append('Remarks')
results = [headers] + result

pd.DataFrame(result).to_csv(f'Data/results_{sem}.csv', header=['PIN', 'SUB_Code', 'SEM', 'Marks', 'Period', 'Mode', 'Remarks'], index=False)
