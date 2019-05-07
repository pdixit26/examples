#Audio 2 Text 
echo "Audio 2 text service starting"

#get base64 encoded output from listenaudio topic
mosquitto_sub -h mqtt_broker -t ova/listenaudio 
decodeAudioFile() {
	  echo "$1" | base64 -d ; echo
  }

decodeAudioFile receivedcontent  
:pocketsphinx_continuous -infile test.wav

mosquitto_pub -h mqtt_broker -t ova/listetext -m "i p address"
