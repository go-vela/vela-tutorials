FROM ruby:alpine@sha256:27013907b6320c9a8576c2b4784bce64f84de4ca14f87f9149def1200f2db378

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.rb /bin/vela-sample.rb

ENTRYPOINT ["ruby", "/bin/vela-sample.rb"]
