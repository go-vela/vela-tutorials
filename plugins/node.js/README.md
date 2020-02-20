# Node.js

Learn how to write a Vela plugin with Node.js!

**NOTE: We recommend reviewing [Docker's best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/) before attempting to create a custom plugin.**

**NOTE: We recommend that all plugins be placed inside a [scratch image](https://hub.docker.com/_/scratch).**

## Overview

From [Node.js documentation](https://nodejs.org/):

> As an asynchronous event-driven JavaScript runtime, Node.js is designed to build scalable network applications.

## Code

To create a plugin using Node.js, we'll need to first decide what task we want this plugin to accomplish.

For this example, we're going to create a program that makes an HTTP request from the provided input.

A sample of this script is provided [here](vela-sample.js).

**NOTE: A better example of this code is provided in the [advanced section](advanced/vela-sample.js).**

## Image

Once we have the script needed to accomplish our plugin's task, we need to create a Dockerfile to produce an image.

This image should contain the script and be setup to run that script when the plugin is executed.

A sample of this file is provided [here](Dockerfile).

## Publishing

In order to run the plugin in a pipeline, we'll need to make sure we build and publish it to a Docker registry:

```sh
# build the image
docker build -t target/vela-sample:node .

# publish the image
docker push target/vela-sample:node
```

**NOTE: This has the added benefit of enabling others in the community to consume your plugin!**

## Troubleshooting

To verify that the plugin performs the desired task, it can be executed locally via the command line:

```sh
docker run --rm \
  -e PARAMETER_BODY="This is a sample Vela plugin written with Node.js" \
  -e PARAMETER_METHOD="POST" \
  -e PARAMETER_URL="http://vela.localhost.com" \
  target/vela-sample:node
```

## Usage

After publishing the image to a Docker registry, it can be referenced in a pipeline:

```yaml
version: "1"

steps:
  - name: sample node plugin
    image: target/vela-sample:node
    pull: true
    parameters:
      url: http://vela.localhost.com
      method: POST
      body: |
        This is a sample Vela plugin written with Node.js
```
