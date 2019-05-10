DOKCER_NAME:=$(ARCH)_$(SERVICE_NAME_V2A)
IMAGE_NAME:= $(DOCKER_HUB_ID)/$(DOKCER_NAME):$(SERVICE_VERSION_V2A)

build:
	docker build -f Dockerfile.$(ARCH) -t $(IMAGE_NAME) .
run:		
	docker run -it  -v /dev/snd:/dev/snd --privileged  $(IMAGE_NAME)
	
docker-push: build
	docker push $(IMAGE_NAME)

publish-service:
	hzn exchange service publish -k $(PRIVATE_KEY_FILE) -K $(PUBLIC_KEY_FILE) -f horizon/service.definition.json
