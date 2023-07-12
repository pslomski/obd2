import unittest
import torque

class TorqueTestSuite(unittest.TestCase):

    def test_load(self):
        app = torque.Torque()
        app.load('dat/trackLog.csv')
        self.assertEquals(0, len(app.sensors), 'invalid sensors lengts')


if __name__ == '__main__':
    unittest.main()
