#!/bin/bash

curl --unix-socket $1 -i \
     -X PUT 'http://localhost/api/v1/vm.snapshot' \
     -H 'Accept: application/json'           \
     -H 'Content-Type: application/json'     \
     -d '{
	"destination_url": "file:///home/samuel"
	}'
