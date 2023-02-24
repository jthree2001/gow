#!/bin/bash

set -e

source /opt/gow/bash-lib/utils.sh

# Launch the container's startup script
exec /opt/gow/startup-app.sh
