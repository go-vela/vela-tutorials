FROM alpine@sha256:3f4d6b32e26703c6082839234f43769d5046b3ac7c910033911d1e71d8cd630a

RUN apk add --update --no-cache bash ca-certificates curl

COPY vela-sample.sh /bin/vela-sample.sh

ENTRYPOINT ["bash", "/bin/vela-sample.sh"]
