import csv

class Loader:
    def __init__(self):
        self.pids = {}
        pass

    def load(self, filePath):
        with open(filePath, newline='') as csvfile:
            reader = csv.DictReader(csvfile, delimiter=';')
            for row in reader:
                pidFileName = row['PID']
                if pidFileName in self.pids:
                    file = self.pids[pidFileName]
                else:
                    file = open('tmp/' + pidFileName, 'w')
                    self.pids[pidFileName] = file
                file.write(row['SECONDS'] + ' ' + row['VALUE'] + '\n')
