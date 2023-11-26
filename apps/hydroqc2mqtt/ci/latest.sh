#!/usr/bin/env bash
version=$(curl -L -s https://pypi.python.org/pypi/hydroqc2mqtt/json | jq --raw-output '.info.version' 2>/dev/null)
version="${version#*v}"
version="${version#*release-}"
printf "%s" "${version}"
