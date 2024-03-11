#!/bin/bash
set -euxo pipefail
cd "$(dirname "$0")"

ros2 launch foxglove_bridge foxglove_bridge_launch.xml port:=8765