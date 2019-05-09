#Audio 2 Text 
echo "Audio 2 text service starting"
echo "Hi There!!!!"

#get base64 encoded output from listenaudio topic
mosquitto_sub -h mqtt_broker -t ova/audioheard -p 1883 | while read -r line
#| encoded
do
echo $line > encoded	
wc -c encoded

base64 -d encoded > new.wav 
aplay -D plughw:0,0 new.wav
echo "generating wave file from encoded output received from voice 2 audio service"
#sleep 2
pocketsphinx_continuous -infile new.wav -logfn /dev/null > textcommand
sleep 30
echo " converting wave file to text using pocketsphinx... wait for few seconds"
sleep 2
echo "$(cat textcommand)"
mosquitto_pub -h mqtt_broker -t ova/textheard -p 1883 -f textcommand 
done
