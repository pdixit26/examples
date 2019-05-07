echo "process text service starting"
echo $HZN_HOST_IPS

#subscribe to audio2text publish topic

mosquitto_sub -h mqtt_broker -t ova/listentext 

