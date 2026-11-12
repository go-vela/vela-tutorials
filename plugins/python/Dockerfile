FROM python:alpine@sha256:0f9552bb28711333da16915ec146f5e6bb44a7fdac9ced15dc17c2e0206346dd

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.py /bin/vela-sample.py

ENTRYPOINT ["python", "/bin/vela-sample.py"]
