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
    blob.download_to_filename(dest)


def exists(source):
    return storage.Blob(bucket=bucket, name=source).exists(storage_client)
