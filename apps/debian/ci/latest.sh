#!/usr/bin/env bash
channel=$1
if [[ $channel == *"-slim" ]]; then
    # slim
    channelslim=${channel%-slim}
    echo Channelslim $channelslim
    version=$(curl -s "https://registry.hub.docker.com/v2/repositories/library/debian/tags?ordering=name&name=$channelslim" | jq --raw-output --arg s "$channelslim" '.results[] | select(.name | test($s + "-[0-9]{8}-slim")) | .name' 2>/dev/null | head -n1)
else
    # non-slim
    version=$(curl -s "https://registry.hub.docker.com/v2/repositories/library/debian/tags?ordering=name&name=$channel" | jq --raw-output --arg s "$channel" '.results[] | select(.name | test($s + "-[0-9]{8}(?!-slim)")) | .name' 2>/dev/null | head -n1)
fi
version="${version#*v}"
version="${version#*release-}"
printf "%s" "${version}"
