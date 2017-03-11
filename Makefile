default: build push

build:
	docker build -t docker.io/acoshift/go-scratch .

push:
	docker push docker.io/acoshift/go-scratch
