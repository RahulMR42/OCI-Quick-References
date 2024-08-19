from openai import OpenAI
import os
# Set OpenAI's API key and API base to use vLLM's API server.
openai_api_key = os.environ['TOKEN']
openai_api_base = f"{os.environ['URL']}/v1"
model = os.environ['MODEL_PATH']

client = OpenAI(
    api_key=openai_api_key,
    base_url=openai_api_base,
)

chat_response = client.chat.completions.create(
    model=model,
    messages=[
        {"role": "system", "content": "size is the length"},
        {"role": "user", "content": "How big was megaladon with length and weight,make short answer"},
    ]
)
print("Chat response:", chat_response)
