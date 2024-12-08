from pymongo import MongoClient, ASCENDING
def initialize_mongo():
    mongo_client = MongoClient("mongodb://mongo:27017/")
    mongo_db = mongo_client["budgeting_system"]
    mongo_categories = mongo_db["categories"]
    mongo_categories.create_index([("name", ASCENDING)], unique=True)
    print("Индексация MongoDB завершена.")
if __name__ == "__main__":
    initialize_mongo()
