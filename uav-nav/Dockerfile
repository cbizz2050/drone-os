FROM ubuntu:20.04

MAINTAINER cbizz <cbizz2050@protonmail.com>

# Export env variables for container environment
ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /home/drone/uav-nav
COPY ./ /home/drone
WORKDIR /home/drone/uav-nav

RUN apt-get update \
    && apt-get -y install \
        build-essential \
        ca-certificates \
        ccache \
        cmake \
        curl \
        git \
        wget \
        python3 \
        python3-pip \
    && pip3 install dronekit \
        dronekit-sitl \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/apt/lists/{apt,dpkg,cache,log} /tmp/* /var/tmp/*

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
