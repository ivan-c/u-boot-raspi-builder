FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive

RUN \
    apt-get update --quiet > /dev/null && \
    apt-get install --quiet --quiet --no-install-recommends \
        bc \
        bison \
        build-essential \
        flex \
        gcc-aarch64-linux-gnu \
        libssl-dev

ENV \
    CROSS_COMPILE=aarch64-linux-gnu- \
    BOARD_CONFIG=rpi_4_defconfig

ADD u-boot /opt/u-boot

WORKDIR /opt/u-boot
CMD \
    make $BOARD_CONFIG && \
    make && \
    cp *.bin /opt/output
