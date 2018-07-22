# go-scratch

Base Image for Golang Web Server

## Usage

```Dockerfile
FROM acoshift/go-scratch

ADD entrypoint /
EXPOSE 80
ENTRYPOINT ["/entrypoint"]
```

```bash
$ GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o entrypoint -ldflags '-w -s' main.go
$ docker build -t myapp .
```

## CGO

```Dockerfile
FROM acoshift/go-alpine

ADD entrypoint /
EXPOSE 80
ENTRYPOINT ["/entrypoint"]
```

```bash
$ GOOS=linux GOARCH=amd64 CGO_ENABLED=1 go build -o entrypoint -ldflags '-w -s' main.go
$ docker build -t myapp .
```
