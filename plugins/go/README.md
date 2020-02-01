# Go

Learn how to write a Vela plugin with Go!

**NOTE: We recommend you review [Docker's best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/) before attempting to create your own plugin.**

**NOTE: We recommend that all plugins be placed inside a [scratch image](https://hub.docker.com/_/scratch).**

## Overview

From [Go documentation](https://golang.org/):

> Go is an open source programming language that makes it easy to build simple, reliable, and efficient software.

## Code

To create a plugin using Go, we'll need to first decide what task we want this plugin to accomplish.

For this example, we're going to create a program that makes an HTTP request from the provided input.

A sample of this script is provided [here](main.go).

**NOTE: A better example of this code is provided in the [advanced section](advanced/main.go).**

## Executable

Now that we have the program to accomplish our plugin's task, we need to compile the code to produce an executable binary for our target platform:

```sh
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o vela-sample
```

**NOTE: Please ensure you compile your program for the right target platform. If you don't, your plugin may fail to properly run and produce unclear error messages.**

## Image

Once we have the executable needed to accomplish our plugin's task, we need to create a Dockerfile to produce an image.

This image should contain our binary and be setup to run that binary when the plugin is executed.

A sample of this file is provided [here](Dockerfile).

## Publishing

In order to run our plugin in a pipeline, we'll need to make sure we build and publish it to a Docker registry:

```sh
# build the image
docker build -t target/vela-sample:go .

# publish the image
docker push target/vela-sample:go
```

**NOTE: This has the added benefit of enabling others in the community to consume your plugin!**

## Troubleshooting

To verify that your plugin performs the desired task, you can execute it locally via the command line:

```sh
docker run --rm \
  -e PARAMETER_BODY="This is a sample Vela plugin written with Go" \
  -e PARAMETER_METHOD="POST" \
  -e PARAMETER_URL="http://vela.localhost.com" \
  target/vela-sample:go
```

## Usage

After publishing your image to a Docker registry, you can then reference it in a pipeline:

```yaml
version: "1"

steps:
  - name: sample go plugin
    image: target/vela-sample:go
    pull: true
    parameters:
      url: http://vela.localhost.com
      method: POST
      body: |
        This is a sample Vela plugin written with Go
```
