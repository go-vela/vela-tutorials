FROM node:alpine@sha256:8996bb5821d62a8fd9bb27c1cb07462f3fdce6e47d640c6a881ead0b064ce216

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.js /bin/vela-sample.js

ENTRYPOINT ["node", "/bin/vela-sample.js"]
