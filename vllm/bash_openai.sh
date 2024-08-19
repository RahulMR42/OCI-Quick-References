source env/bin/activate
export TOKEN=xxx
model="mistralai/Mistral-Nemo-Instruct-2407"
python -m vllm.entrypoints.openai.api_server --model $model --tensor-parallel-size 2 --port 9001 --api-key ${TOKEN} --max-model-len 4096 &
sleep 10
export USER_NAME="genai"
python gradio_server.py --model-url "http://localhost:9001/v1" -m "mistralai/Mistral-Nemo-Instruct-2407" --port 9002 --host "0.0.0.0"
