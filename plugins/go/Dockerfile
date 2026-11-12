FROM golang:alpine@sha256:eb61c3873c97416fff0116553fff65d67a3549f72e11d9758849a689cdd8b523

RUN apk add --update --no-cache ca-certificates

COPY vela-sample /bin/vela-sample

ENTRYPOINT ["/bin/vela-sample"]
