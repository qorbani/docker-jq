NAME=jq
TAG=qorbani/$(NAME)
VER=1.5

all: clean build test

build:
	# wget https://github.com/stedolan/jq/releases/download/jq-$(VER)/jq-linux64 -O jq
	# chmod +x jq
	docker build -t $(TAG) -t $(TAG):$(VER) .

test:
	echo '{"test":true}' | docker run -i --rm qorbani/jq jq ".test"

clean:
	# -rm -Rf jq
	-docker rm -f $(TAG)
	-docker rmi $(TAG)
	-docker rmi $(TAG):$(VER)

push:
	docker push $(TAG)
	docker push $(TAG):$(VER)