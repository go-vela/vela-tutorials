# Python

Learn how to write a Vela plugin with Python!

**NOTE: We recommend reviewing [Docker's best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/) before attempting to create a custom plugin.**

**NOTE: We recommend that all plugins be placed inside a [scratch image](https://hub.docker.com/_/scratch).**

## Overview

From [Python documentation](https://www.python.org/):

> Python is a programming language that lets you work quickly and integrate systems more effectively.

## Code

To create a plugin using Python, we'll need to first decide what task we want this plugin to accomplish.

For this example, we're going to create a program that makes an HTTP request from the provided input.

A sample of this script is provided [here](vela-sample.py).

**NOTE: A better example of this code is provided in the [advanced section](advanced/vela-sample.py).**

## Image

Once we have the script needed to accomplish our plugin's task, we need to create a Dockerfile to produce an image.

This image should contain the script and be setup to run that script when the plugin is executed.

A sample of this file is provided [here](Dockerfile).

## Publishing

In order to run the plugin in a pipeline, we'll need to make sure we build and publish it to a Docker registry:

```sh
# build the image
docker build -t target/vela-sample:python .

# publish the image
docker push target/vela-sample:python
```

**NOTE: This has the added benefit of enabling others in the community to consume your plugin!**

## Troubleshooting

To verify that the plugin performs the desired task, it can be executed locally via the command line:

```sh
docker run --rm \
  -e PARAMETER_BODY="This is a sample Vela plugin written with Python" \
  -e PARAMETER_METHOD="POST" \
  -e PARAMETER_URL="http://vela.localhost.com" \
  target/vela-sample:python
```

## Usage

After publishing the image to a Docker registry, it can be referenced in a pipeline:

```yaml
version: "1"

steps:
  - name: sample python plugin
    image: target/vela-sample:python
    pull: true
    parameters:
      url: http://vela.localhost.com
      method: POST
      body: |
        This is a sample Vela plugin written with Python
```
