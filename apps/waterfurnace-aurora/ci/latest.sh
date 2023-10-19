#!/usr/bin/env bash
version=$(curl -L -s https://rubygems.org/api/v1/versions/waterfurnace_aurora.json | jq '.[0].number' | tr -d '"' 2>/dev/null)
version="${version#*v}"
version="${version#*release-}"
printf "%s" "${version}"
