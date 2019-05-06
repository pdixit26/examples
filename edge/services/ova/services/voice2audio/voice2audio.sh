	echo "Say some command"
	arecord -D sysdefault:CARD=0  -d 5 --format S16_LE --rate 16000 -c1 test.wav
        echo "Recording done!! Test.wav file is createdi"
	while true; do
		echo "Container is running"
	done
