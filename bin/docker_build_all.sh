#!/bin/bash

cd `dirname "$0"`

./docker_build.sh 0.4.0/alpine bats:0.4.0 bats:0.4.0-alpine bats:0.4.0-rc2
./docker_build.sh 1.1.0/debian bats bats:1.1.0 bats:1.1.0-debian

