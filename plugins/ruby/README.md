# Ruby

Learn how to write a Vela plugin with Ruby!

**NOTE: We recommend you review [Docker's best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/) before attempting to create your own plugin.**

**NOTE: We recommend that all plugins be placed inside a [scratch image](https://hub.docker.com/_/scratch).**

## Overview

From [Ruby documentation](https://www.ruby-lang.org/en/):

> Ruby is...
>
> A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.

## Code

To create a plugin using Ruby, we'll need to first decide what task we want this plugin to accomplish.

For this example, we're going to create a program that makes an HTTP request from the provided input.

A sample of this script is provided [here](vela-sample.rb).

**NOTE: A better example of this code is provided in the [advanced section](advanced/vela-sample.rb).**

## Image

Once we have the script needed to accomplish our plugin's task, we need to create a Dockerfile to produce an image.

This image should contain our script and be setup to run that script when the plugin is executed.

A sample of this file is provided [here](Dockerfile).

## Publishing

In order to run our plugin in a pipeline, we'll need to make sure we build and publish it to a Docker registry:

```sh
# build the image
docker build -t target/vela-sample:ruby .

# publish the image
docker push target/vela-sample:ruby
```

**NOTE: This has the added benefit of enabling others in the community to consume your plugin!**

## Troubleshooting

To verify that your plugin performs the desired task, you can execute it locally via the command line:

```sh
docker run --rm \
  -e PARAMETER_BODY="This is a sample Vela plugin written with Ruby" \
  -e PARAMETER_METHOD="POST" \
  -e PARAMETER_URL="http://vela.localhost.com" \
  target/vela-sample:ruby
```

## Usage

After publishing your image to a Docker registry, you can then reference it in a pipeline:

```yaml
version: "1"

steps:
  - name: sample ruby plugin
    image: target/vela-sample:ruby
    pull: true
    parameters:
      url: http://vela.localhost.com
      method: POST
      body: |
        This is a sample Vela plugin written with Ruby
```
