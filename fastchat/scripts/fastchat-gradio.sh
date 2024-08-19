port=8001
source /home/opc/fastchat/dev/bin/activate
python -m fastchat.serve.gradio_web_server --host 0.0.0.0 --port ${port} # --gradio-auth-path "/home/opc/fastchat/scripts/credentials"
