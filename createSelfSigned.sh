#!/bin/bash
echo "Generating an SSL private key to sign your certificate..."
openssl genrsa -des3 -out devssl.key 1024

echo "Generating a Certificate Signing Request..."
openssl req -new -key devssl.key -out devssl.csr

echo "Removing passphrase from key (for nginx)..."
cp devssl.key devssl.key.org
openssl rsa -in devssl.key.org -out devssl.key
rm devssl.key.org

echo "Generating certificate..."
openssl x509 -req -days 3650 -in devssl.csr -signkey devssl.key -out devssl.crt

echo "Moving certificate (devssl.crt) to {$PWD}/devCerts/"
mkdir -p  ./config/certs/devCerts
mv devssl.crt ./config/certs/devCerts/

echo "Moving key (devssl.key) to {$PWD}/devCertsPrivate/"
mkdir -p  ./config/certs/devCertsPrivate
mv devssl.key ./config/certs/devCertsPrivate/

echo "Moving Certificate Signing Request (devssl.key) to {$PWD}/devCertsSignReq/"
mkdir -p  ./config/certs/devCertsSignReq
mv devssl.csr ./config/certs/devCertsSignReq/
