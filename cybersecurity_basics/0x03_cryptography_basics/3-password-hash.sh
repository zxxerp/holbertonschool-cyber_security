#!/bin/bash

# Generate a random 16-character value (salt)
salt=$(openssl rand -hex 8)

# Combine password and salt, then hash using SHA-512 with OpenSSL
echo -n "$1$salt" | openssl dgst -sha512 > 3_hash.txt
