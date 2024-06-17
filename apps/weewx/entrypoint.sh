#!/usr/bin/env bash


if [ ! -d "/config/weewx-data)" ]; then
    weectl station create --no-prompt
fi


#if [[ "${WEEWX_EXTENSION_WINDY}" == "true" ]]; then
#    #Check if the extenstion is already installed
#    #https://raw.githubusercontent.com/matthewwall/weewx-influx/2f5c3af5f6ba4e8c0e4f364a0d3ef11a7fc95d43/bin/user/influx.py
#    #https://github.com/matthewwall/weewx-owm/archive/master.zip
#    weectl extension --install https://github.com/david-lutz/weewx-influx2/archive/refs/heads/master.zip
#    weectl extension --install https://github.com/matthewwall/weewx-windy/archive/master.zip
#fi

exec \
    weewxd --config=/config/weewx-data/weewx.conf \
        "$@"
bash
