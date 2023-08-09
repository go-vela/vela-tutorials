FROM python:alpine@sha256:603975e62d85aa07578034d3d10ffa1983b7618a6abb6371cf51941be6b8842c

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.py /bin/vela-sample.py

ENTRYPOINT ["python", "/bin/vela-sample.py"]
