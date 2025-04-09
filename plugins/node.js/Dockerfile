FROM node:alpine@sha256:86703151a18fcd06258e013073508c4afea8e19cd7ed451554221dd00aea83fc

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.js /bin/vela-sample.js

ENTRYPOINT ["node", "/bin/vela-sample.js"]
