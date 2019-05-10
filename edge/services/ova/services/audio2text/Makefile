DOKCER_NAME:=$(ARCH)_$(SERVICE_NAME_A2T)
IMAGE_NAME:= $(DOCKER_HUB_ID)/$(DOKCER_NAME):$(SERVICE_VERSION_A2T)

build:
	docker build -f Dockerfile.$(ARCH) -t $(IMAGE_NAME) .

run:
	docker run -it  -v /dev/snd:/dev/snd --privileged  $(IMAGE_NAME)

docker-push: build
	docker push $(DOCKER_HUB_ID)/$(IMAGE_NAME):$(SERVICE_VERSION_PT)

publish-service:
	hzn exchange service publish -k $(PRIVATE_KEY_FILE) -K $(PUBLIC_KEY_FILE) -f horizon/service.definition.json
