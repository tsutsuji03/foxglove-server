FROM ros:humble-ros-base-jammy

### pre setting ###
ENV DEBIAN_FRONTEND=noninteractive
ENV ROS_DISTRO=humble

SHELL ["/bin/bash", "-c"]

RUN apt update 
RUN apt upgrade -y 
RUN apt install -y sudo git nano tmux 

### foxglove ###
RUN apt install -y ros-$ROS_DISTRO-foxglove-bridge

### ros2 ###
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" | tee -a ${HOME}/.bashrc

# clear cache
RUN apt clean
RUN rm -rf /var/lib/apt/lists/*
RUN rm /etc/apt/apt.conf.d/docker-clean

COPY ./foxglove-server-entrypoint.sh /
ENTRYPOINT ["/foxglove-server-entrypoint.sh"]
CMD ["bash"]

WORKDIR /foxglove-server
