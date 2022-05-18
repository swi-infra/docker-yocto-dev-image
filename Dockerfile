FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN ( \
        apt-get update && \
        apt-get --yes --assume-yes install -y \
            gawk wget git-core diffstat unzip texinfo gcc-multilib \
            build-essential chrpath socat python-git python-jinja2 \
            git subversion libsdl-dev locales \
            diffstat texinfo gawk chrpath wget cpio \
            vim icecc bash ninja-build screen sshpass \
            bc unzip libxml2-utils autoconf openjdk-8-jdk lbzip2 \
            python3 python3-git python3-jinja2 python3-pip python3-pexpect rsync jq \
            ca-certificates \
            xz-utils debianutils iputils-ping libegl1-mesa libsdl1.2-dev \
            pylint3 xterm python3-subunit mesa-common-dev zstd liblz4-tool openssl libssl-dev && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/* && \
        ln -sf /bin/bash /bin/sh \
    )

## UTF8 support
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8


