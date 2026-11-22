FROM ruby:alpine@sha256:9d3416708d4f434a62bf265a865deab75d376cc1d260c71651c9fb8708dbb2e7

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.rb /bin/vela-sample.rb

ENTRYPOINT ["ruby", "/bin/vela-sample.rb"]
