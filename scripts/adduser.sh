#!/bin/sh

set -e

USER=keycloak
GROUP=keycloak

if ! getent group ${GROUP} >/dev/null; then
        addgroup --quiet --system ${GROUP}
fi

# create colord user if it isn't already there
if ! getent passwd ${USER} >/dev/null; then
        adduser --system --ingroup ${GROUP} --home /opt/keycloak ${USER} --gecos "${USER} management daemon"
fi
exit 0
