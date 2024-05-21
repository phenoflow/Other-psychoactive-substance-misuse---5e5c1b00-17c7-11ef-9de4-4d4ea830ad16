# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"E253.00","system":"readv2"},{"code":"E245100","system":"readv2"},{"code":"1T7..00","system":"readv2"},{"code":"E245z00","system":"readv2"},{"code":"Eu16711","system":"readv2"},{"code":"E245200","system":"readv2"},{"code":"E253300","system":"readv2"},{"code":"1T73.00","system":"readv2"},{"code":"E253100","system":"readv2"},{"code":"E253z00","system":"readv2"},{"code":"E253200","system":"readv2"},{"code":"E245.00","system":"readv2"},{"code":"E245300","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-psychoactive-substance-misuse-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-psychoactive-substance-misuse-hallucinogens---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-psychoactive-substance-misuse-hallucinogens---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-psychoactive-substance-misuse-hallucinogens---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
