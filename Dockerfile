FROM scratch
MAINTAINER Thanatat Tamtan <acoshift@gmail.com>

ENV GOROOT /usr/local
ADD https://golang.org/lib/time/zoneinfo.zip /usr/local/lib/time/
ADD https://curl.haxx.se/ca/cacert.pem /etc/ssl/certs/ca-certificates.crt
