import csv

class CarScanner:
    def __init__(self):
        self.sensors = {}
        pass

    def load(self, filePath):
        with open(filePath, newline='') as csvfile:
            reader = csv.DictReader(csvfile, delimiter=';')
            for row in reader:
                pidFileName = row['PID']
                if pidFileName in self.sensors:
                    file = self.sensors[pidFileName]
                else:
                    file = open('tmp/' + pidFileName, 'w')
                    self.sensors[pidFileName] = file
                file.write(row['SECONDS'] + ' ' + row['VALUE'] + '\n')
