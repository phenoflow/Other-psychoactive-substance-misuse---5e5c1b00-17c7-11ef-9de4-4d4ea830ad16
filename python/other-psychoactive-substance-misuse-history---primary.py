# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"1T...00","system":"readv2"},{"code":"21096.0","system":"readv2"},{"code":"101724.0","system":"readv2"},{"code":"101394.0","system":"readv2"},{"code":"93193.0","system":"readv2"},{"code":"95396.0","system":"readv2"},{"code":"42649.0","system":"readv2"},{"code":"91029.0","system":"readv2"},{"code":"84215.0","system":"readv2"},{"code":"12651.0","system":"readv2"},{"code":"106143.0","system":"readv2"},{"code":"109849.0","system":"readv2"},{"code":"91848.0","system":"readv2"},{"code":"85091.0","system":"readv2"},{"code":"30711.0","system":"readv2"},{"code":"94693.0","system":"readv2"},{"code":"101377.0","system":"readv2"},{"code":"99798.0","system":"readv2"},{"code":"100935.0","system":"readv2"},{"code":"92232.0","system":"readv2"},{"code":"86036.0","system":"readv2"},{"code":"85834.0","system":"readv2"},{"code":"84156.0","system":"readv2"},{"code":"109471.0","system":"readv2"},{"code":"93109.0","system":"readv2"},{"code":"86035.0","system":"readv2"},{"code":"90109.0","system":"readv2"},{"code":"86754.0","system":"readv2"},{"code":"90271.0","system":"readv2"},{"code":"93774.0","system":"readv2"},{"code":"100477.0","system":"readv2"},{"code":"87502.0","system":"readv2"},{"code":"96198.0","system":"readv2"},{"code":"88781.0","system":"readv2"},{"code":"85671.0","system":"readv2"},{"code":"93263.0","system":"readv2"},{"code":"85096.0","system":"readv2"},{"code":"86002.0","system":"readv2"},{"code":"83574.0","system":"readv2"},{"code":"82476.0","system":"readv2"},{"code":"68327.0","system":"readv2"},{"code":"85097.0","system":"readv2"},{"code":"83564.0","system":"readv2"},{"code":"93554.0","system":"readv2"},{"code":"99429.0","system":"readv2"},{"code":"89698.0","system":"readv2"},{"code":"106342.0","system":"readv2"},{"code":"88782.0","system":"readv2"},{"code":"92993.0","system":"readv2"},{"code":"88844.0","system":"readv2"},{"code":"86771.0","system":"readv2"},{"code":"82479.0","system":"readv2"},{"code":"81441.0","system":"readv2"},{"code":"78442.0","system":"readv2"},{"code":"90442.0","system":"readv2"},{"code":"88990.0","system":"readv2"},{"code":"91256.0","system":"readv2"},{"code":"89145.0","system":"readv2"},{"code":"103881.0","system":"readv2"},{"code":"89930.0","system":"readv2"},{"code":"82471.0","system":"readv2"},{"code":"93528.0","system":"readv2"},{"code":"88760.0","system":"readv2"},{"code":"92404.0","system":"readv2"},{"code":"92359.0","system":"readv2"},{"code":"88372.0","system":"readv2"},{"code":"90664.0","system":"readv2"},{"code":"85956.0","system":"readv2"},{"code":"87002.0","system":"readv2"},{"code":"95380.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-psychoactive-substance-misuse-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-psychoactive-substance-misuse-history---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-psychoactive-substance-misuse-history---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-psychoactive-substance-misuse-history---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
