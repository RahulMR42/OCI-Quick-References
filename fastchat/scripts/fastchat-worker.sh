model_path="../llms/Phind-CodeLlama-34B-v2/"
nump_gpus=4
source /home/opc/fastchat/dev/bin/activate
python -m fastchat.serve.model_worker --model-path ${model_path} --host 0.0.0.0 --num-gpus ${nump_gpus}
