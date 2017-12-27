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
$ env GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o entrypoint -ldflags '-w -s' main.go
$ docker build -t myapp .
```
