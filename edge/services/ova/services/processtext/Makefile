IMAGE_NAME:= $(SERVICE_NAME)

build:
	docker build -f Dockerfile.$(ARCH) -t $(IMAGE_NAME) .

run:
	docker run -it  -v /dev/snd:/dev/snd --privileged  $(IMAGE_NAME)
