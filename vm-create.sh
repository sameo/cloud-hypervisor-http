#!/bin/bash

curl --unix-socket $1 -i \
     -X PUT 'http://localhost/api/v1/vm.create' \
     -H 'Accept: application/json'           \
     -H 'Content-Type: application/json'     \
     -d '{
	"cpus":    {"boot_vcpus": 4, "max_vcpus": 4},
	"kernel":  {"path":"/home/samuel/devlp/kernels/linux-cloud-hypervisor/vmlinux"},
	"cmdline": {"args":"console=ttyS0 reboot=k panic=1 nomodules i8042.noaux i8042.nomux i8042.nopnp i8042.dumbkbd"},
	"serial":  {"mode": "Tty"},
	"console": {"mode": "Off"}
       	}'
