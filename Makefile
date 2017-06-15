.PHONY: tag push taglatest 
default: taglatest

IMAGE=linuxkit-systemd-init
DEPS=Dockerfile.ubuntu-17.04 $(wildcard etc/*) $(wildcard etc/init.d/*)

HASH?=$(shell git rev-parse HEAD)

build: $(DEPS)
	docker build --no-cache -t rbuckland/$(IMAGE):$(HASH) -f Dockerfile.ubuntu-17.04 .

taglatest: build
	docker tag rbuckland/$(IMAGE):$(HASH) rbuckland/$(IMAGE):latest

push: build
	docker pull rbuckland/$(IMAGE):$(HASH) || \
	docker push rbuckland/$(IMAGE):$(HASH)
