FROM golang:alpine@sha256:7772cb5322baa875edd74705556d08f0eeca7b9c4b5367754ce3f2f00041ccee

RUN apk add --update --no-cache ca-certificates

COPY vela-sample /bin/vela-sample

ENTRYPOINT ["/bin/vela-sample"]
