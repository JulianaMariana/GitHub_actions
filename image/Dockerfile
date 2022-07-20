# Get the base Ubuntu image from Docker Hub
FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

# Install apt requirements
RUN apt-get update \
    && apt-get install -yq \
        sudo \
        git

# Install basics libs
RUN apt-get install build-essential gdb -yq

# Create the user
ARG USERNAME=course
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

ENTRYPOINT ["/bin/bash", "-c"]
