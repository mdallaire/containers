#!/usr/bin/env bash
channel=$1
version=$(curl -s "https://registry.hub.docker.com/v2/repositories/library/debian/tags?ordering=name&name=$channel" | jq --raw-output --arg s "$channel" '.results[] | select(.name | test($s + "-[0-9]{8}(?!-slim)")) | .name' 2>/dev/null | head -n1)
version="${version#*v}"
version="${version#*release-}"
printf "%s" "${version}"
