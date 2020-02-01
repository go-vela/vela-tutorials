#!/usr/bin/env ruby

require 'net/http'
require 'uri'

# import method parameter from environment
method = ENV['PARAMETER_METHOD']
# import body parameter from environment
body = ENV['PARAMETER_BODY']
# import url parameter from environment
url = ENV['PARAMETER_URL']

# capture full URI from url
uri = URI(url)

# create new HTTP client from URI
http = Net::HTTP.new(uri.host, uri.port)

# send HTTP request and capture response
response = http.send_request(
  method,
  uri.path,
  body,
)

# output the response
puts response.read_body
