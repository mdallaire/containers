#!/usr/bin/env bash
#shellcheck disable=SC2086

export PATH="$HOME/.local/bin:$PATH"

if [[ "${HOME_ASSISTANT__HACS_INSTALL}" == "true" ]]; then
    curl -sfSL https://get.hacs.xyz | bash -
fi

exec \
    /usr/local/bin/hass \
        --config /config \
        "$@"
