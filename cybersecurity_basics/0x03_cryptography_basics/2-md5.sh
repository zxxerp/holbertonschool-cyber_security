#!/bin/bash

# Hash the given password using MD5 and store it in 2_hash.txt
echo -n "$1" | md5sum | awk '{print $1}' > 2_hash.txt
