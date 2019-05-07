	echo "Say some command"
#recording voice command
	arecord -D sysdefault:CARD=0  -d 5 --format S16_LE --rate 16000 -c1 test.wav
        echo "Recording done!! Test.wav file is created!!"
#converting to base64 encoding       
       	openssl base64 -in test.wav -out base64encoded
	echo "Wav file is converted to base64encoded file"
#publish to mqtt listenaudio topic
	mosquitto_pub -h mqtt_broker -t ova/listenaudio -m "sending pooja message"
	echo "publishing messages"
	while(true); do
	echo "........"	
done
