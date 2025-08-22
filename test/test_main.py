import unittest
import os

class TestTerraformConfig(unittest.TestCase):
    def test_main_tf_exists(self):
        self.assertTrue(os.path.exists('main.tf'))
    def test_outputs_tf_exists(self):
        self.assertTrue(os.path.exists('outputs.tf'))
    def test_providers_tf_exists(self):
        self.assertTrue(os.path.exists('providers.tf'))
    def test_variables_tf_exists(self):
        self.assertTrue(os.path.exists('variables.tf'))
    def test_network_module(self):
        with open('modules/network/main.tf') as f:
            content = f.read()
        self.assertIn('resource "aws_vpc"', content)
    def test_storage_module(self):
        with open('modules/storage/main.tf') as f:
            content = f.read()
        self.assertIn('resource "aws_s3_bucket"', content)
    def test_outputs_content(self):
        with open('outputs.tf') as f:
            content = f.read()
        self.assertIn('output "network_vpc_id"', content)
        self.assertIn('output "storage_bucket_id"', content)
    def test_variables_content(self):
        with open('variables.tf') as f:
            content = f.read()
        self.assertIn('variable "aws_region"', content)
        self.assertIn('variable "bucket_name"', content)
    def test_providers_content(self):
        with open('providers.tf') as f:
            content = f.read()
        self.assertIn('provider "aws"', content)
        self.assertIn('provider "random"', content)

if __name__ == "__main__":
    unittest.main()
