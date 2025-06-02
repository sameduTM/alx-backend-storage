#!/usr/bin/env python3
"""Write a Python script that provides some stats about Nginx logs
stored in MongoDB
"""
import pprint
from pymongo import MongoClient

client = MongoClient()
db = client.logs

print(f"{db.nginx.count_documents({})} logs")
print("Methods:")
methods = ['GET', 'POST', 'PUT', 'PATCH', 'DELETE']
for method in methods:
    print(f"\tmethod {method}: {db.nginx.count_documents({'method': method})}")
print(f"{db.nginx.count_documents({'path': '/status'})} status check")