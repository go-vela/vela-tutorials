#!/usr/bin/env python

import http.client
import os
import urlparse

# import method parameter from environment
method = os.getenv['PARAMETER_METHOD']
# import body parameter from environment
body = os.getenv['PARAMETER_BODY']
# import url parameter from environment
url = os.getenv['PARAMETER_URL']

# check if a method parameter was provided
if !method:
    print("no method parameter provided")
    exit(1)

# check if a body parameter was provided
if !body:
    print("no body parameter provided")
    exit(1)

# check if a url parameter was provided
if !url:
    print("no url parameter provided")
    exit(1)


# capture full URI from url
uri = urlparse(url)

# create new HTTP connection from URL
conn = http.client.HTTPSConnection(uri.hostname, uri.port)

# create headers to be added to request
headers = {}

# send HTTP request
conn.request(method, uri.path, body, headers)

# capture the response
response = conn.getresponse()

# output the response
print(response.read().decode("utf-8"))
