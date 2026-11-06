FROM python:alpine@sha256:a0f2e268f2ce8f3709611a90054ec6a8ae31f6251f5896b8648b9bb99835e30a

RUN apk add --update --no-cache ca-certificates

COPY vela-sample.py /bin/vela-sample.py

ENTRYPOINT ["python", "/bin/vela-sample.py"]
