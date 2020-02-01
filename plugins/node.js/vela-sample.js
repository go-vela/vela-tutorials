#!/usr/bin/env node

const https = require("https");
const url = require("url");

// import method parameter from environment
const method = process.env.PARAMETER_METHOD;
// import body parameter from environment
const body = process.env.PARAMETER_BODY;
// import url parameter from environment
const uri = process.env.PARAMETER_URL;

// capture full URL from uri
const myURL = url.parse(uri);

// create options for HTTP request
const options = {
  method: method
};

// create new HTTP request from provided input
const req = https.request(myURL, options);

// exit immediately if request errors
req.on("error", () => {
  process.exit(1);
});

// write body to HTTP request
req.write(process.env.PARAMETER_BODY);

// send HTTP request
req.end();
