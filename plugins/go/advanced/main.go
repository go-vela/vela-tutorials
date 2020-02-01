package main

import (
	"fmt"
	"net/http"
	"os"
	"strings"
)

func main() {
	// import method parameter from environment
	method := os.Getenv("PARAMETER_METHOD")
	// import body parameter from environment
	body := os.Getenv("PARAMETER_BODY")
	// import url parameter from environment
	url := os.Getenv("PARAMETER_URL")

	// check if a method parameter was provided
	if len(method) == 0 {
		fmt.Println("no method paramater provided")
		os.Exit(1)
	}

	// check if a body parameter was provided
	if len(body) == 0 {
		fmt.Println("no body paramater provided")
		os.Exit(1)
	}

	// check if a url parameter was provided
	if len(url) == 0 {
		fmt.Println("no url paramater provided")
		os.Exit(1)
	}

	// create payload from body
	payload := strings.NewReader(body)

	// create new HTTP request from provided input
	request, err := http.NewRequest(method, url, payload)
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	// send HTTP request and capture response
	response, err := http.DefaultClient.Do(request)
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	// output the response
	fmt.Println(response)
}
