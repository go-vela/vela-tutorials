FROM ruby:alpine@sha256:ca8b5f9a8b6533925dfa355f7fbadb64cbfd801cb7e8fa87260ef8a2eae964cc

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.rb /bin/vela-sample.rb

ENTRYPOINT ["ruby", "/bin/vela-sample.rb"]
