#!/bin/bash

# Hash the given password using SHA-256 and store it in 1_hash.txt
echo -n "$1" | sha256sum | awk '{print $1}' > 1_hash.txt
