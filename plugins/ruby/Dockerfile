FROM ruby:alpine@sha256:f172a0265b6a887e0342f822c26fa2ee1c2135c831033ee9ae58f41976d1f6b4

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.rb /bin/vela-sample.rb

ENTRYPOINT ["ruby", "/bin/vela-sample.rb"]
