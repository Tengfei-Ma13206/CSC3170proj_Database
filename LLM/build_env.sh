# make sure you are under python environment with commonly used tools (e.g. using conda with python and git)
mkdir llamaRAG
cd llamaRAG
git clone https://github.com/run-llama/llama_index.git
cd llama_index
pip install llama-index

# custom selection of integrations to work with core
pip install llama-index-core
pip install llama-index-llms-openai
pip install llama-index-llms-replicate
pip install llama-index-embeddings-huggingface

pip install poetry
poetry install --with dev
# it may wait for some time to set up the environment