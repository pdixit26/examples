echo "************************"
echo "Text Command Processing"
echo "***********************"
#subscribe to audio2text publish topic
mosquitto_sub -h mqtt_broker -t ova/textheard -p 1883 | while read -r line
do
	echo $line
	status=$line
if [[ status==*"address"* ]]; then
	echo $HZN_HOST_IPS | cut -d',' -f2 > msg
else
	echo "i dont understand what you said" >msg	
fi
cat msg
mosquitto_pub -h mqtt_broker -t ova/result -p 1883 -f msg
echo "**************************"
echo "Text command processing done. Published result to mqtt topic"
echo "**************************"
done
