#!/bin/sh

set -e

USER=keycloak
GROUP=keycloak

if getent passwd ${USER} >/dev/null; then
        deluser ${USER}
fi

if getent group ${GROUP} >/dev/null; then
        delgroup ${GROUP}
fi

exit 0
