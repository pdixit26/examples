import os
import sys
import base64 
import json


mqtt_host = "mqtt_broker"
mqtt_topic = "ova/listenaudio"
mqtt_port = 1883

#recording user voice and converting to audio file
cmd = "arecord -D sysdefault:CARD=0  -d 5 --format S16_LE --rate 16000 -c1 test.wav"
print("Say some command like Ip address, time")
os.system(cmd)
print("recording done. test.wav file is created in sandbox")

#publishing to mqtt topic
f = open("test.wav","rb")
byte_content = base64.b64encode(f.read())
f.close()

audio_data = {}

string_content = byte_content.decode('utf-8')
audio_data = {
                "format":"wav",
                "content": string_content
            }

audio_json = json.dumps(audio_data)

#sending to mqtt
cmd = "mosquitto_pub -h mqtt_broker -t ova/listenaudio -m %s"%(json.dumps(audio_json))
print(cmd)
os.system(cmd)


