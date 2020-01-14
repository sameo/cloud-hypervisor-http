#!/bin/bash

curl --unix-socket $1 -i \
     -X PUT 'http://localhost/api/v1/vm.create' \
     -H 'Accept: application/json'           \
     -H 'Content-Type: application/json'     \
     -d '{
     	"cpus":{"cpu_count": 4},
	"kernel":{"path":"/opt/kata/vmlinux-virtio-fs-v0.3-54"},
	"cmdline":{"args":"console=hvc0 reboot=k panic=1 nomodules i8042.noaux i8042.nomux i8042.nopnp i8042.dumbkbd root=/dev/vda3"},
	"disks":[{"path":"/home/samuel/devlp/hypervisor/images/clear-30080-kvm.img"}],
	"rng":{"src":"/dev/urandom"},
	"net":[{"ip":"192.168.10.10", "mask":"255.255.255.0", "mac":"12:34:56:78:90:01"}]
       	}'
