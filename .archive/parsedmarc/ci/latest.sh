#!/usr/bin/env bash
version=$(curl -L -s https://pypi.python.org/pypi/parsedmarc/json | jq --raw-output '.info.version' 2>/dev/null)
version="${version#*v}"
version="${version#*release-}"
printf "%s" "${version}"
