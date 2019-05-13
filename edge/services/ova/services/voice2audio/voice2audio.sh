echo "STARING VOICE 2 AUDIO"
#recording voice command
	
arecord -D sysdefault:CARD=1  -d 5 --format S16_LE --rate 16000 -c1 test.wav
echo "Test.wav file is created!!"
#converting to base64 encoding  
base64 test.wav | tr -d \\n > encodeddata
echo "Wav file is converted to base64encoded file"

#publish to mqtt listenaudio topic
mosquitto_pub -h mqtt_broker -t ova/audioheard -f encodeddata
echo "SENT AUDIO DATA TO AUDIO 2 TEXT SERVICE"

sleep 60
