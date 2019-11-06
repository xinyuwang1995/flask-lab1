import unittest
import pandas as pd
from main.app import app
from main.parsedata import convert_to_list


class TestAskMe(unittest.TestCase):

    def setUp(self):
        self.app = app.test_client()

    def tearDown(self):
        pass

    def test_page(self):
        response = self.app.get('/askme', follow_redirects=True)
        self.assertEqual(response.status_code, 200)

    def test_num_docs(self):
        self.assertEqual(len(convert_to_list(r"D:/flask_ci_cd/lab1_flask/main/dataset/Answers.txt")), 2609)


