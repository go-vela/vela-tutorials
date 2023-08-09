FROM ruby:alpine@sha256:ee39ade2cbda43fd466d787a595f142c9fa318284dd1d6b3e2f9590a9f4f75ab

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.rb /bin/vela-sample.rb

ENTRYPOINT ["ruby", "/bin/vela-sample.rb"]
