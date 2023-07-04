# Based on rust:bullseye at the time of writing
FROM rust:latest

RUN apt update
RUN apt install -y \
    gcc-arm-linux-gnueabihf \
    libc6-armhf-cross \
    libc6-dev-armhf-cross

RUN rustup target add armv7-unknown-linux-gnueabihf

# Set custom linker for target platform
ENV CARGO_TARGET_ARMV7_UNKNOWN_LINUX_GNUEABIHF_LINKER=arm-linux-gnueabihf-gcc

RUN mkdir -p /root/workspace/src
COPY assets/Makefile /root/workspace

WORKDIR /root/workspace

