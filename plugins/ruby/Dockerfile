FROM ruby:alpine@sha256:f1e530793cc09e1093417a4c9956069407155e1883d02beb30bda35ae54a47a3

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.rb /bin/vela-sample.rb

ENTRYPOINT ["ruby", "/bin/vela-sample.rb"]
