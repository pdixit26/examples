export HZN_ORG_ID=pdixit@ibm.com
export EXCHANGE_USER=iamapikey
export EXCHANGE_PW=7xpyfwCQjMf1d-_0GzTNC43YuSjTkseUTyf5E2ShGP7y
export MYDOMAIN=pdixitdomain.com
export PATTERN=processtext   # this is the device type
export ARCH=arm  
# This variable must be set appropriately for your specific Edge Node
export HZN_DEVICE_ID=pdixit
export HZN_DEVICE_TOKEN=1
export SERVICE_NAME_V2A=voice2audio
export SERVICE_NAME_A2T=audio2text
export SERVICE_NAME_PT=processtext
export SERVICE_NAME_T2S=text2speech
export SERVICE_NAME_MQTT=mqtt_broker
export SERVICE_VERSION_V2A=0.0.3 
export SERVICE_VERSION_A2T=0.0.3 
export SERVICE_VERSION_PT=0.0.3
export SERVICE_VERSION_T2S=0.0.3 
export SERVICE_VERSION_MQTT=0.0.1 
export DOCKER_HUB_ID=pdixit26
export PRIVATE_KEY_FILE=/home/pi/keys/IBM-2aa63912da91f9787986891255943b9673ab61ce-private.key
export PUBLIC_KEY_FILE=/home/pi/keys/IBM-2aa63912da91f9787986891255943b9673ab61ce-public.pem
# This is IBM Message Hub you are sending data to
# There is normally no need for you to edit these variables
export HZN_ORGANIZATION=$HZN_ORG_ID
export HZN_EXCHANGE_USER_AUTH="$EXCHANGE_USER:$EXCHANGE_PW"
export EXCHANGE_NODEAUTH="$HZN_DEVICE_ID:$HZN_DEVICE_TOKEN"

# You only need to set this if you are running 'hzn dev' without the full edge fabric agent installed
export HZN_EXCHANGE_URL="https://alpha.edge-fabric.com/v1"

