import unittest
import obd2

class LoaderTestSuite(unittest.TestCase):

    def test_convert(self):
        obd = obd2.Obd2()
        obd.convert()


if __name__ == '__main__':
    unittest.main()
