#
## Makefile for Offline Voice Assistent
#
#

DOCKER_NAME:= $(ARCH)_$(SERVICE_NAME)
IMAGE_NAME:= $(DOCKER_HUB_ID)/$(DOCKER_NAME):$(SERVICE_VERSION)

default: all

all: build run

build:
		docker build -f Dockerfile.$(ARCH) -t $(IMAGE_NAME) .

run:
		-docker rm -f $(IMAGE_NAME) 2>/dev/null || :
			docker run -d --name $(DOCKER_NAME) $(IMAGE_NAME)

stop:
		docker stop `docker ps | grep $(IMAGE_NAME) | cut -d' ' -f1`

log:
		docker logs -f $(DOCKER_NAME)

docker-push: build
		docker push $(IMAGE_NAME)

publish-service:
		hzn exchange service publish -k $(PRIVATE_KEY_FILE) -K $(PUBLIC_KEY_FILE) -f horizon/service.definition.json

publish-pattern:
		hzn exchange pattern publish -p $(SERVICE_NAME) -f horizon/pattern.$(SERVICE_NAME).json

register-node:
		hzn register -n $$EXCHANGE_NODEAUTH $$HZN_ORG_ID $$PATTERN -f horizon/pattern.register.json
