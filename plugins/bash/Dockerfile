FROM alpine@sha256:294b683cb724975bec92580e1e685676bd4b50bda910ddb8c51d4cabeaec77e6

RUN apk add --update --no-cache bash ca-certificates curl

COPY vela-sample.sh /bin/vela-sample.sh

ENTRYPOINT ["bash", "/bin/vela-sample.sh"]
