#!/bin/bash

curl --silent --unix-socket $1 \
     -X GET 'http://localhost/api/v1/vm.snapshot' \
     -H 'Accept: application/json'
