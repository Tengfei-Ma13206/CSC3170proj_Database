# GPT-powered Search engine for MySql database

## With running mysql server
This engine uses the LlamaIndex library, which integrates seamlessly with OpenAI's language models, to interpret natural language queries and convert them into SQL queries that are executed against a MySQL database.

### Database Configuration
- The database connection is established to a MySQL server using SQLAlchemy. 
- Configuration details are managed through environment variables to handle network restrictions and API key security.

### Defining the SQLDatabase
- A `SQLDatabase` instance is created by reflecting all tables from the existing MySQL database schema. 
- This instance enables the integration with LlamaIndex's text-to-SQL capabilities, making it possible to query the database using natural language.

### Querying the Database with Natural Language
- **NLSQLRetriever**: Configured to translate natural language queries directly into SQL queries that reflect against the database. It is initialized to return raw SQL results, allowing direct interaction with the database results.
- **Query Results**: Natural language queries like "Return the top 5 customers (along with their account balance) with the highest account balance." are processed to retrieve and display relevant data directly from the MySQL database.
- **Integration with RetrieverQueryEngine**: This engine synthesizes the retriever's capabilities, enabling sophisticated query processing and handling of complex queries more efficiently.

### Functionalities Achieved
- **Natural Language to SQL Conversion**: The system can interpret natural language queries and convert them into executable SQL statements.
- **Dynamic Table Handling**: By loading all table schemas at initialization, the system can dynamically determine which tables to query based on the natural language input.
- **Secure and Configurable API Access**: Using environment variables for API keys and proxy settings ensures that the system is secure and configurable, crucial for operations in restricted network environments.

## With only data files (RAG + Vector store)
read the data file diectly without interacting with mysqlsever.
### Functionalities Achieved
- **Efficient Retrieval**: By indexing documents using a vector store, the engine achieves efficient retrieval of relevant information from the MySQL database, reducing search time.
- **Persistent Storage**: The engine supports persistent storage of the index, allowing for quick initialization and reuse of the index for subsequent queries.
- **Interactive Experience**: Users can engage in a conversational interface, receiving answers to their questions in real-time.
