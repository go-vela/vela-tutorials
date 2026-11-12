FROM alpine@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf

RUN apk add --update --no-cache bash ca-certificates curl

COPY vela-sample.sh /bin/vela-sample.sh

ENTRYPOINT ["bash", "/bin/vela-sample.sh"]
