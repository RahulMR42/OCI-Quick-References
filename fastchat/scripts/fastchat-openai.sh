api_key="--"
port=8000
source /home/opc/fastchat/dev/bin/activate
python -m fastchat.serve.openai_api_server --api-keys ${api_key} --host 0.0.0.0 --port ${port}
