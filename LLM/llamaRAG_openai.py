import os

os.environ["HTTP_PROXY"] = "http://localhost:7890"
os.environ["HTTPS_PROXY"] = "http://localhost:7890"
os.environ["OPENAI_API_KEY"] = "sk-frKcwBsKsA68lPWfnAuf9MTowEr3ZwUgIY2xA5d5INw2NUql"
os.environ["OPENAI_API_BASE"] = "https://api.chatanywhere.tech/v1"

from llama_index.core import Settings, VectorStoreIndex, SimpleDirectoryReader

from llama_index.core import StorageContext, load_index_from_storage

import os.path
from llama_index.core import (
    VectorStoreIndex,
    SimpleDirectoryReader,
    StorageContext,
    load_index_from_storage,
)
document_path = "D:\\Admin\\csc3170\\project\\llamaindex\\llama_index\\data"
documents = SimpleDirectoryReader(document_path).load_data()
index = VectorStoreIndex.from_documents(
    documents,
)
# check if storage already exists
PERSIST_DIR = "./storage"
if not os.path.exists(PERSIST_DIR):
    # load the documents and create the index
    documents = SimpleDirectoryReader("data").load_data()
    index = VectorStoreIndex.from_documents(documents)
    # store it for later
    index.storage_context.persist(persist_dir=PERSIST_DIR)
else:
    # load the existing index
    storage_context = StorageContext.from_defaults(persist_dir=PERSIST_DIR)
    index = load_index_from_storage(storage_context)


stop = False

while (not stop):
    query_engine = index.as_query_engine()
    question = input("What is your question? \n")
    if (question == "stop"): 
        stop = True
        break
    answer = query_engine.query(question)
    print(answer)

