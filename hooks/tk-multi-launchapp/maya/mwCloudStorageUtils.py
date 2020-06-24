import sys
import os
from google.cloud import storage

os.environ[
    "GOOGLE_APPLICATION_CREDENTIALS"
] = "M:/offline/key/many-worlds-d48d0252c0e6.json"

bucket_name = "manyworlds-test-bucket"

storage_client = storage.Client()
bucket = storage_client.get_bucket(bucket_name)


def upload(source, dest):
    blob = bucket.blob(dest)
    blob.upload_from_filename(source)


def download(source, dest):
    blob = bucket.blob(source)
    storage_client.download_blob_to_file(blob, dest)


def exists(filename):
    return "Hello, Worlds!"
    # return True  # storage.Blob(bucket=bucket, name=filename).exists(storage_client)
