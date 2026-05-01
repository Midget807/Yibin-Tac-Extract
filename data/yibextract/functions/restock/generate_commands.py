import csv

file = open("C:/Users/patri/Downloads/yibextract.csv", newline='')
reader = csv.reader(file)

for row in reader:
    print(f"setblock {row[1]} {row[2]} {row[3]} minecraft:{row[0]}_shulker_box{{LootTable:\"yibextract:{row[0]}\"}}")