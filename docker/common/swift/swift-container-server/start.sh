#!/bin/bash

set -o errexit

CMD="/usr/bin/swift-container-server"
ARGS="/etc/swift/container-server.conf --verbose"

# Loading common functions.
source /opt/kolla/kolla-common.sh

# Config-internal script exec out of this function, it does not return here.
set_configs

exec $CMD $ARGS
