FROM python:alpine@sha256:18159b2be11db91f84b8f8f655cd860f805dbd9e49a583ddaac8ab39bf4fe1a7

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.py /bin/vela-sample.py

ENTRYPOINT ["python", "/bin/vela-sample.py"]
