#!/bin/bash

##

set -e

set -v

##

reset

clear

##

docker-compose down --remove-orphans

docker-compose up --build -d

##

docker stats

