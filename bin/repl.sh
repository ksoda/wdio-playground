#!/bin/bash
docker-compose run --rm app npx wdio repl ${1:-chrome} -h selenium-hub

