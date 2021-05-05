#!/bin/bash

mdbook serve 1> /dev/null 2>&1 &

trap "kill $(jobs -p)" EXIT

electron $(realpath $(dirname $0)) http://localhost:3000

