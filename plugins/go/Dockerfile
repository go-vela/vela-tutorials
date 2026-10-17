FROM golang:alpine@sha256:f92b6ef800e499660581efdabdf25d9d817a9d124eaf900924f0504e7e27e12d

RUN apk add --update --no-cache ca-certificates

COPY vela-sample /bin/vela-sample

ENTRYPOINT ["/bin/vela-sample"]
