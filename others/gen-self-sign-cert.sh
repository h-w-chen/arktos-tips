#!/bin/bash

set -e

if [ "$#" -ne 2 ]
then
  echo "Usage: gen-self-sign-cert.sh [org] [person]"
  exit 1
fi

org=$1
person=$2

openssl req -x509 -newkey rsa:2048 -sha256 -days 3650 -nodes -keyout example.key -out example.crt -subj  "/CN=${person}/O=tenant:${org}/OU=${org}-group"

echo
echo "use echo example.crt example.key > cert.pem  to get the pem file"
echo "use openssl x509 -in example.crt -text -noout to display the content"


