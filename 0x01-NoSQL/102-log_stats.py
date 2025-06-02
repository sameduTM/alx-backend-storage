#!/usr/bin/env python3
"""Write a Python script that provides some stats about Nginx logs
stored in MongoDB
"""
from pymongo import MongoClient


if __name__ == "__main__":
    client = MongoClient()
    db = client.logs
    collection = db.nginx
    print(f"{collection.count_documents({})} logs")
    print("Methods:")
    methods = ['GET', 'POST', 'PUT', 'PATCH', 'DELETE']
    for method in methods:
        print(
            f"\tmethod {method}: {collection.count_documents({'method': method})}")
    print(f"{collection.count_documents({'method': 'GET', 'path': '/status'})} status check")
    # top 10 IPs
    print("IPs:")
    pipeline = [
        {"$group": {"_id": "$ip", "count": {"$sum": 1}}},
        {"$sort": {"count": -1}},
        {"$limit": 10}
    ]
    top_ips = collection.aggregate(pipeline)
    for ip in top_ips:
        print(f"\t{ip['_id']}: {ip['count']}")
