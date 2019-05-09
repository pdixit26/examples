import os
import sys
import paho.mqtt.client as mqtt
import base64
import subprocess as sp
 
mqtt_host = "mqtt_broker"
mqtt_topic = "ova/listenaudio"
mqtt_port = 1883
  
#subscribing to mqtt
#cmd = "mosquitto_sub -h %s -p %s -t %s"%(mqtt_host, mqtt_port, mqtt_topic)
#os.system(cmd)
output = sp.getoutput("mosquitto_sub -h mqtt_broker -p 1883 -t ova/listenaudio")
print(output)
# The callback for when a PUBLISH message is received from the server.
f = open('new.wav', 'wb')
#f.write(base64.b64decode(msg.payload))
f.close()
cmd = "pocketsphinx_continuous -infile test.wav" 
os.system(cmd)
                        
