FROM golang:alpine@sha256:445f34008a77b0b98bf1821bf7ef5e37bb63cc42d22ee7c21cc17041070d134f

RUN apk add --update --no-cache ca-certificates

COPY vela-sample /bin/vela-sample

ENTRYPOINT ["/bin/vela-sample"]
