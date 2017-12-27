FROM alpine as stage
RUN apk add --update ca-certificates tzdata

FROM scratch
LABEL maintainer="Thanatat Tamtan <acoshift@gmail.com>"

COPY --from=stage /usr/share/zoneinfo /usr/share/zoneinfo
COPY --from=stage /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
