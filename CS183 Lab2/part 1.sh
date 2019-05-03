#!/bin/sh
#part1

find /usr/src/kernels/ -type f -name "*.h" -exec grep -i magic {} \; | wc -1