#!/usr/bin/env ruby

require 'net/http'
require 'uri'

# import method parameter from environment
method = ENV['PARAMETER_METHOD']
# import body parameter from environment
body = ENV['PARAMETER_BODY']
# import url parameter from environment
url = ENV['PARAMETER_URL']

# check if a method parameter was provided
if method.empty?
  puts "no method parameter provided"
  exit(1)
end

# check if a body parameter was provided
if body.empty?
  puts "no body parameter provided"
  exit(1)
end

# check if a url parameter was provided
if url.empty?
  puts "no url parameter provided"
  exit(1)
end

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
