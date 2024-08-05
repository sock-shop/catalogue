#!/bin/bash

# Navigate to the script's directory
cd "$(dirname "$0")"

# Set environment variables
MYSQL_ROOT_PASSWORD="DEFAULT_PASS"
MYSQL_ALLOW_EMPTY_PASSWORD="true"
MYSQL_DATABASE="socksdb"

# Run the Docker container
docker run \
  --name catalogue-db \
  -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=$MYSQL_ALLOW_EMPTY_PASSWORD \
  -e MYSQL_DATABASE=$MYSQL_DATABASE \
  -v $(pwd)/data/dump.sql:/docker-entrypoint-initdb.d/dump.sql \
  mysql:5.7
