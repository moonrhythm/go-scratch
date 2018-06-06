default: test build push

clean-test:
	-rm -rf tmp
	-docker rm go-scratch-test-run
	-docker rmi go-scratch:test-run
	-docker rmi go-scratch:test

.PHONY: test
test: clean-test
	docker build --pull -t go-scratch:test .
	mkdir -p tmp
	env GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o tmp/test -ldflags '-w -s' test/main.go
	cp test/Dockerfile tmp/
	docker build -t go-scratch:test-run tmp
	docker run -it --name go-scratch-test-run go-scratch:test-run
	make clean-test

build:
	docker build --pull -t acoshift/go-scratch .

push:
	docker push acoshift/go-scratch
