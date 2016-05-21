.PHONY: all build push test version
include VERSION.env

DOCKER_IMAGE_VERSION=$(VERSION)
DOCKER_IMAGE_NAME=dellarte/rpi-gophish

all: build

build:
	docker build -t $(DOCKER_IMAGE_NAME):latest .

push:
	docker push $(DOCKER_IMAGE_NAME)

test:
	docker run --rm $(DOCKER_IMAGE_NAME) /bin/echo "Success."

version:
	docker run --rm $(DOCKER_IMAGE_NAME) go version

