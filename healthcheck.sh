#!/bin/sh

check_url() {
  url=$1
  status=$(curl -o /dev/null -s -w "%{http_code}\n" "$url")
  if [ "$status" -ne 200 ]; then
    echo "Health check failed for $url with status $status"
    exit 1
  fi
}

check_url "http://localhost:80/health"
check_url "http://localhost:80/catalogue"
