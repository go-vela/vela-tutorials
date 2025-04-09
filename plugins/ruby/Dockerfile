FROM ruby:alpine@sha256:cb6a5cb7303314946b75fa64c96d8116f838b8495ffa161610bd6aaaf9a70121

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.rb /bin/vela-sample.rb

ENTRYPOINT ["ruby", "/bin/vela-sample.rb"]
