FROM ruby:alpine@sha256:c9956b1836f8c3f4fc4724e435baa037e55d32b302406742dfd5dcaadf7a4bb1

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.rb /bin/vela-sample.rb

ENTRYPOINT ["ruby", "/bin/vela-sample.rb"]
