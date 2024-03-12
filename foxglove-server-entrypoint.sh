#!/bin/bash
set -e
cd "$(dirname "$0")"

source /opt/ros/humble/setup.bash
exec /foxglove-server/launch-foxglove-server.sh

exec "$@"