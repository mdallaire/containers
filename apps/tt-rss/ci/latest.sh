#!/usr/bin/env bash

MAYOR_VERSION=2
MINOR_VERSION=0
CHECKOUT_DIR=/tmp/tt-rss

if [ -d "$CHECKOUT_DIR" ]; then
  cd "$CHECKOUT_DIR"
  git pull > /dev/null
else
  git clone https://git.tt-rss.org/fox/tt-rss.git "$CHECKOUT_DIR" > /dev/null 2>&1
  cd "$CHECKOUT_DIR"
fi

number_of_commits=$(git rev-list --count --first-parent HEAD)

printf "%s.%s.%s" "${MAYOR_VERSION}" "${MINOR_VERSION}" "${number_of_commits}"
