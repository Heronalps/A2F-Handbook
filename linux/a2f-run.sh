#! /usr/bin/bash

# Root directory ./ACE

cd ./microservices/audio_2_face_microservice/scripts/audio2face_microservices_interaction_app
python3 -m venv .venv
source .venv/bin/activate


pip3 install ./microservices/audio_2_face_microservice/proto/sample_wheel/nvidia_ace-1.0.0-py3-none-any.whl
pip3 install -r ./microservices/audio_2_face_microservice/scripts/audio2face_microservices_interaction_app/requirements.txt 

python3 ./a2f.py ./microservices/example_audio/Claire_anger.wav ./config_claire_v1.3.yml -u 127.0.0.1:52000

