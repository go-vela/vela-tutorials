#!/usr/bin/env bash

# import method parameter from environment
method=${PARAMETER_METHOD}
# import body parameter from environment
body=${PARAMETER_BODY}
# import url parameter from environment
url=${PARAMETER_URL}

# send curl request with provided input
curl \
  -X "${method}" \
  -d "${body}" \
  "${url}"
