echo "[OVA]:Text to Speech Service is starting"

mosquitto_sub -h mqtt_broker -t ova/result -p 1883 | while read -r line
do 
	echo $line
	echo $line > res.txt
        espeak -ven-us -f res.txt
done	
