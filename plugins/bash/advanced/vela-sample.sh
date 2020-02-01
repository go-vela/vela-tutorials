#!/usr/bin/env bash

# import method parameter from environment
method=${PARAMETER_METHOD}
# import body parameter from environment
body=${PARAMETER_BODY}
# import url parameter from environment
url=${PARAMETER_URL}

# check if a method parameter was provided
if [ -z "${method}" ]
then
  echo "no method parameter provided"
  exit 1
fi

# check if a body parameter was provided
if [ -z "${body}" ]
then
  echo "no body parameter provided"
  exit 1
fi

# check if a url parameter was provided
if [ -z "${url}" ]
then
  echo "no url parameter provided"
  exit 1
fi

# send curl request with provided input
curl \
  -X "${method}" \
  -d "${body}" \
  "${url}"
