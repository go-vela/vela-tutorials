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
