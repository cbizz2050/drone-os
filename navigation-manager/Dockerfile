FROM ubuntu:20.04

MAINTAINER cbizz <cbizz2050@protonmail.com>

# Export env variables for container environment
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get -y install \
        build-essential \
        ca-certificates \
        ccache \
        clang-format-10 \
        cmake \
        git \
        libcurl4-openssl-dev \
        libltdl-dev \
        libtinyxml2-dev \
        libtool \
        libz-dev \
        python3 \
        python3-pip \
        wget \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/apt/lists/{apt,dpkg,cache,log} /tmp/* /var/tmp/*

RUN pip3 install --upgrade future lxml pymavlink
RUN mkdir -p /home/drone/navigation-manager

COPY ./ /home/drone/navigation-manager
WORKDIR /home/drone/navigation-manager
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
