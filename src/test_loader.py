import unittest
import loader

class LoaderTestSuite(unittest.TestCase):

    def test_load(self):
        ld = loader.Loader()
        ld.load("dat/2023-07-11 17-26-25.csv")


if __name__ == '__main__':
    unittest.main()
