#!/bin/bash

curl --unix-socket $1 -i -X PUT 'http://localhost/api/v1/vm.reboot'
