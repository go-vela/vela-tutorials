FROM alpine@sha256:7144f7bab3d4c2648d7e59409f15ec52a18006a128c733fcff20d3a4a54ba44a

RUN apk add --update --no-cache bash ca-certificates curl

COPY vela-sample.sh /bin/vela-sample.sh

ENTRYPOINT ["bash", "/bin/vela-sample.sh"]
