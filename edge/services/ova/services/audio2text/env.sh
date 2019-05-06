export HZN_ORG_ID=pdixit@ibm.com
export EXCHANGE_USER=iamapikey
export EXCHANGE_PW=7xpyfwCQjMf1d-_0GzTNC43YuSjTkseUTyf5E2ShGP7y
export MYDOMAIN=pdixitdomain.com
export PATTERN=IBM/offlinevoiceassistent   # this is the device type
export ARCH=arm  
# This variable must be set appropriately for your specific Edge Node
export HZN_DEVICE_ID=pdixit
export HZN_DEVICE_TOKEN=1
export SERVICE_NAME=audio2text
export SERVICE_VERSION=0.0.1 
export DOCKER_HUB_ID=pdixit26
# This is IBM Message Hub you are sending data to
# There is normally no need for you to edit these variables
export HZN_ORGANIZATION=$HZN_ORG_ID
export HZN_EXCHANGE_USER_AUTH="$EXCHANGE_USER:$EXCHANGE_PW"
export EXCHANGE_NODEAUTH="$HZN_DEVICE_ID:$HZN_DEVICE_TOKEN"

# You only need to set this if you are running 'hzn dev' without the full edge fabric agent installed
export HZN_EXCHANGE_URL="https://alpha.edge-fabric.com/v1"

