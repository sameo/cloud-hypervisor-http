#!/bin/bash

curl --unix-socket $1 -i \
     -X GET 'http://localhost/api/v1/vm.info' \
     -H 'Accept: application/json'
