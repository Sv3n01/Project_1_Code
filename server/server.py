#pip install nemo_toolkit['asr']

import nemo
# NeMo's ASR collection - This collection contains complete ASR models and
# building blocks (modules) for ASR
import nemo.collections.asr as nemo_asr
import torch

from typing import Annotated
from fastapi import FastAPI, File, UploadFile, Request, WebSocket
from fastapi.middleware.cors import CORSMiddleware
from starlette.requests import ClientDisconnect
from starlette.responses import Response

from fastapi import File, UploadFile
import os
import pathlib

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=['*'],
    allow_credentials=True,
    allow_methods=['*'],
    allow_headers=['*'],
)
	
#speaker verification
@app.post("/auth")
async def auth(request: Request):
	data: bytes = await request.body()#bytes string
	if os.path.exists("./files/test.wav"):
    		os.remove("./files/test.wav")
	file_location = f"files/test.wav"
	with open(file_location, "wb+") as file_object:
        	file_object.write(data)
        	
	asr_model = nemo_asr.models.ASRModel.from_pretrained("stt_en_fastconformer_transducer_large")
	transcript = asr_model.transcribe([file_location])
	print("transcript: " + transcript[0][0])
	if (transcript[0][0] != 'open the door'):
		print("wrong passphrase!!!!")
		return "res:0"
	
	speaker_model = nemo_asr.models.EncDecSpeakerLabelModel.from_pretrained("nvidia/speakerverification_en_titanet_large")
	tensor1 = speaker_model.get_embedding(file_location).flatten()
	cos = torch.nn.CosineSimilarity(dim=0)	
	success = "0"
	person = ""
	        
	#test voices sven
	highestSimSven = 0 # only for debugging
	directory = os.fsencode("./files/sven")
	for file in os.listdir(directory):
		filename = os.fsdecode(file)
		tensor2 = speaker_model.get_embedding("./files/sven/arduino_mic/"+filename).flatten()
		similarity = (cos(tensor1, tensor2)).item()
		if(similarity > highestSimSven):
			highestSimSven = similarity
		if (similarity >= 0.6):
			success = "1"
			person = "sven"
			break
		
	print("highestSimSven: " + str(highestSimSven))
		
	#TODO test other voices
	directory = os.fsencode("./files/sayed")
	for file in os.listdir(directory):
		filename = os.fsdecode(file)
		tensor2 = speaker_model.get_embedding("./files/sayed/arduino_mic/"+filename).flatten()
		similarity = (cos(tensor1, tensor2)).item()
		if (similarity >= 0.6):
			success = "1"
			person = "sayed"
			break
        
        
	print("person: " + person)
	print("returning res:" + success)
	if(success=="1"):
		return "res:1"
	else:
		return "res:0"

#prevent crashing on client timeout
@app.exception_handler(ClientDisconnect)
async def client_disconnect_exception_handler(request: Request, exc: ClientDisconnect):
    # Handle the ClientDisconnect exception gracefully
    return Response("Client disconnected", status_code=200)


import uvicorn
uvicorn.run(app, port=8000)
