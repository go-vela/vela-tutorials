FROM node:alpine@sha256:d9d53500783a153234cc47d89a2f9117d1ed4eadf29cbeb46c377d172348aa73

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.js /bin/vela-sample.js

ENTRYPOINT ["node", "/bin/vela-sample.js"]
