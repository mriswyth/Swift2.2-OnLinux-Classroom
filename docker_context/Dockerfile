FROM ubuntu:15.10

# Install dependencies for running Swift 2.2 on ubuntu:15.10 image
RUN apt-get update && \
    apt-get install -y \
            clang \
            libicu55 \
            libpython2.7 \
            libxml2 \
            vim \
            wget \
            make && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Swift keys
RUN wget -q -O - https://swift.org/keys/all-keys.asc | gpg --import - && \
    gpg --keyserver hkp://pool.sks-keyservers.net --refresh-keys Swift

# Download and install Swift
# Swift 2.2 Release for ubuntu:15.10
RUN SWIFT_PKG=swift-2.2-RELEASE && \
    SWIFT_HOST=ubuntu15.10 && \
    SWIFT_URL=https://swift.org/builds/swift-2.2-release && \
    SWIFT_BASE_FILE=${SWIFT_PKG}-${SWIFT_HOST} && \
    SWIFT_LINK=${SWIFT_URL}/$(echo "${SWIFT_HOST}" | tr -d .)/${SWIFT_PKG}/${SWIFT_BASE_FILE} && \
    wget ${SWIFT_LINK}.tar.gz && \
    wget ${SWIFT_LINK}.tar.gz.sig && \
    gpg --verify ${SWIFT_BASE_FILE}.tar.gz.sig && \
    tar -xvzf ${SWIFT_BASE_FILE}.tar.gz -C / --strip 1 && \
    mkdir /projects && \
    rm -rf ${SWIFT_BASE_FILE}* /tmp/* /var/tmp/* && \
    useradd -m -u 1000 swift -g users -s /bin/bash

USER swift
