import os
import openai


os.environ["HTTP_PROXY"] = "http://localhost:7890" # huggingface got banned by GFW, ToT
os.environ["HTTPS_PROXY"] = "http://localhost:7890"
os.environ["OPENAI_API_KEY"] = "sk-your api"
os.environ["OPENAI_API_BASE"] = "your api base usrl"
openai.api_key = os.environ["OPENAI_API_KEY"]
openai.base_url = os.environ["OPENAI_API_BASE"]
from IPython.display import Markdown, display

from llama_index.core import Settings, VectorStoreIndex, SimpleDirectoryReader
from llama_index.embeddings.huggingface import HuggingFaceEmbedding
from llama_index.llms.replicate import Replicate
from transformers import AutoTokenizer

# Create Database Schema

from sqlalchemy import (
    create_engine,
    MetaData,
    Table,
    Column,
    String,
    Integer,
    select,
)
from llama_index.core import SQLDatabase
from sqlalchemy import insert
from sqlalchemy import text

# Define SQL Database

engine = create_engine("mysql+pymysql://root:121090155@127.0.0.1:3306/comprehensive_supermarket")
metadata_obj = MetaData()
metadata_obj.reflect(bind=engine)




from llama_index.core import SQLDatabase
from llama_index.llms.openai import OpenAI

llm = OpenAI(temperature=0.1, model="gpt-3.5-turbo")
table_list = [
    "t_customers",
    "t_employees",
    "t_expense_reports",
    "t_inventory_reports",
    "t_product_management_records",
    "t_product_variants",
    "t_products",
    "t_reduction_promotions",
    "t_sales_reports",
    "t_supplier_contacts",
    "t_suppliers",
    "t_supply_records",
    "t_transaction_details",
    "t_transaction_records",
    "t_variant_discounts"
]

# Create an instance of SQLDatabase including all tables
sql_database = SQLDatabase(engine, include_tables=table_list)
from sqlalchemy import insert



""" # Query Index

from sqlalchemy import text

with engine.connect() as con:
    rows = con.execute(text("SELECT * FROM t_customers"))
    for row in rows:
        print(row) """

""" # Part 1: Text-to-SQL Query Engine

from llama_index.core.query_engine import NLSQLTableQueryEngine

query_engine = NLSQLTableQueryEngine(
    sql_database=sql_database, tables=table_list, llm=llm
)
query_str = "Which customer has the highest account balance?"
response = query_engine.query(query_str)

# display(Markdown(f"<b>{response}</b>"))
print(response) """

""" # Part 2: Query-Time Retrieval of Tables for Text-to-SQL

from llama_index.core.indices.struct_store.sql_query import (
    SQLTableRetrieverQueryEngine,
)
from llama_index.core.objects import (
    SQLTableNodeMapping,
    ObjectIndex,
    SQLTableSchema,
)
from llama_index.core import VectorStoreIndex

# set Logging to DEBUG for more detailed outputs
table_node_mapping = SQLTableNodeMapping(sql_database)
for name in table_list:
    table_schema_objs = [
        (SQLTableSchema(table_name=name))
    ]  # add a SQLTableSchema for each table

obj_index = ObjectIndex.from_objects(
    table_schema_objs,
    table_node_mapping,
    VectorStoreIndex,
)
query_engine = SQLTableRetrieverQueryEngine(
    sql_database, obj_index.as_retriever(similarity_top_k=1)
)

response = query_engine.query("Which customer has the highest account balance?")
# display(Markdown(f"<b>{response}</b>"))
print(response)

# you can also fetch the raw result from SQLAlchemy!
print(response.metadata["result"]) """

""" # manually set context text
city_stats_text = (
    "This table gives information regarding the population and country of a"
    " given city.\nThe user will query with codewords, where 'foo' corresponds"
    " to population and 'bar'corresponds to city."
)

table_node_mapping = SQLTableNodeMapping(sql_database)
table_schema_objs = [
    (SQLTableSchema(table_name="city_stats", context_str=city_stats_text))
] """

# Part 3: Text-to-SQL Retriever

from llama_index.core.retrievers import NLSQLRetriever

""" # default retrieval (return_raw=True)
nl_sql_retriever = NLSQLRetriever(
    sql_database, tables=table_list, return_raw=True
)

results = nl_sql_retriever.retrieve(
    "Return the top 5 customers (along with their account balance) with the highest account balance."
) """

from llama_index.core.response.notebook_utils import display_source_node

""" for n in results:
    # display_source_node(n)
    print(n) """

""" # default retrieval (return_raw=False)
nl_sql_retriever = NLSQLRetriever(
    sql_database, tables=table_list, return_raw=False
)

results = nl_sql_retriever.retrieve(
    "Return the top 5 customers (along with their account balance) with the highest account balance."
)

# NOTE: all the content is in the metadata
for n in results:
    display_source_node(n, show_source_metadata=True) """

from llama_index.core.query_engine import RetrieverQueryEngine

def nl2sqlquery(query_str):
    # default retrieval (return_raw=True)
    nl_sql_retriever = NLSQLRetriever(
        sql_database, tables=table_list, return_raw=True
    )

    """ results = nl_sql_retriever.retrieve(
        query_str
    )
    for n in results:
        # display_source_node(n)
        print(n) """

    query_engine = RetrieverQueryEngine.from_args(nl_sql_retriever)
    response = query_engine.query(
        query_str
    )
    return str(response)

print("listening")

""" stop = False
while (not stop):
    query_str = query()
    if (query_str == "stop"): break
    # e.g "Return the top 5 customers (along with their account balance) with the highest account balance."
    query_engine = RetrieverQueryEngine.from_args(nl_sql_retriever)
    response = query_engine.query(
        query_str
    )
    print(str(response)) """

""" from sqlalchemy import delete, update

# Function to create a new table
def create_table(engine, table_name, columns):
    meta = MetaData(engine)
    new_table = Table(table_name, meta, *columns)
    meta.create_all()

# Function to insert data into a table
def insert_data(engine, table_name, data):
    table = metadata_obj.tables[table_name]
    with engine.connect() as connection:
        connection.execute(insert(table), data)

# Function to update data in a table
def update_data(engine, table_name, conditions, new_data):
    table = metadata_obj.tables[table_name]
    stmt = (
        update(table).
        where(conditions).
        values(new_data)
    )
    with engine.connect() as connection:
        connection.execute(stmt)

# Function to delete data from a table
def delete_data(engine, table_name, conditions):
    table = metadata_obj.tables[table_name]
    stmt = (
        delete(table).
        where(conditions)
    )
    with engine.connect() as connection:
        connection.execute(stmt)

def process_command(engine, query):
    # Simulate natural language understanding to decide the operation
    if "create table" in query.lower():
        # Define the table and columns
        create_table(engine, "new_table", [
            Column('id', Integer, primary_key=True),
            Column('name', String(255))
        ])
    elif "insert into" in query.lower():
        # Example data to insert
        insert_data(engine, "t_customers", [{"name": "John Doe", "balance": 100}])
    elif "update" in query.lower():
        # Example update
        update_data(engine, "t_customers", Table.c.name == 'John Doe', {"balance": 200})
    elif "delete from" in query.lower():
        # Example delete
        delete_data(engine, "t_customers", Table.c.name == 'John Doe')

    # You can integrate this with Llama Index querying to decide what to execute
    else:
        # Use Llama Index or direct SQL query
        response = nl_sql_retriever.retrieve(query)
        for n in response:
            print(n) """

