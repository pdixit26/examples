DOCKER_NAME:= $(ARCH)_$(SERVICE_NAME_MQTT)
IMAGE_NAME:= $(DOCKER_HUB_ID)/$(DOCKER_NAME):$(SERVICE_VERSION_MQTT)


build:
		docker build -f Dockerfile.$(ARCH) -t $(IMAGE_NAME) .

run:
		docker run -d -p 1883:1883 --name $(DOCKER_NAME) $(IMAGE_NAME)

stop:
		docker stop `docker ps | grep $(IMAGE_NAME) | cut -d' ' -f1`

docker-push: build
		docker push $(DOCKER_HUB_ID)/$(DOCKER_NAME):$(SERVICE_VERSION_MQTT)

publish-service:
		hzn exchange service publish -k $(PRIVATE_KEY_FILE) -K $(PUBLIC_KEY_FILE) -f horizon/service.definition.json

publish-pattern:
		hzn exchange pattern publish -p $(SERVICE_NAME_MQTT) -f horizon/service.definition.json

register-node:
		hzn register -n $(EXCHANGE_NODEAUTH) $(HZN_ORG_ID) $(PATTERN) -f horizon/service.definition.json

