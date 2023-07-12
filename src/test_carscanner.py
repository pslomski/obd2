import unittest
import carscanner

class CarScannerTestSuite(unittest.TestCase):

    def test_load(self):
        app = carscanner.CarScanner()
        app.load("dat/2023-07-11 17-26-25.csv")
        self.assertEquals(16, len(app.sensors), 'invalid sensors lengts')


if __name__ == '__main__':
    unittest.main()