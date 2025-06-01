#!/usr/bin/env python3
"""8. List all documents in Python"""


def list_all(mongo_collection):
    """list all document in collection"""
    if mongo_collection is not None:
        return [doc for doc in mongo_collection.find()]
    return []
