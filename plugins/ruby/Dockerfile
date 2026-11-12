FROM ruby:alpine@sha256:8ad6909db16ad53b5dc90bb8cc157e5fdd89ba1172798316b95cfd2a61f14b1e

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.rb /bin/vela-sample.rb

ENTRYPOINT ["ruby", "/bin/vela-sample.rb"]
