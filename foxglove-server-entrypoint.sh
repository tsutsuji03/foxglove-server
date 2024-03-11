#!/bin/bash
set -euxo pipefail
cd "$(dirname "$0")"

# readonly ROS_DISTRO="humble"
# /opt/ros/${ROS_DISTRO}/bin/ros2 run picamera2_for_ros2_pkg cameratotopic_node

exec "$@"