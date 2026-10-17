FROM python:alpine@sha256:5a02b6cf2cc372357e17ffde3f5f87afa4659a783d949d8320c005f506cf11e9

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.py /bin/vela-sample.py

ENTRYPOINT ["python", "/bin/vela-sample.py"]
