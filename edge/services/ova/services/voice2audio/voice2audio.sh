echo "********Voice 2 Audio Service Starting!!! "
echo "*******Say some command like whats your IP address>?"
#recording voice command
	
arecord -D sysdefault:CARD=0  -d 5 --format S16_LE --rate 16000 -c1 test.wav
echo "*************Recording done!! Test.wav file is created!!"
#converting to base64 encoding  
base64 troy.wav | tr -d \\n > encodeddata
echo "***************Wav file is converted to base64encoded file"

#publish to mqtt listenaudio topic
wc -c encodeddata
mosquitto_pub -h mqtt_broker -t ova/audioheard -f encodeddata
echo "**************Published data to mqtt topic"

while(true)
do
	echo "waiting to hear answer of my command"
	sleep 6000
done
