FROM node:alpine@sha256:6f08a523443ddedf52941874c203475b0ad503e859ad70cb26ab8be9a517dbd5

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.js /bin/vela-sample.js

ENTRYPOINT ["node", "/bin/vela-sample.js"]
