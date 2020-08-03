FROM ubuntu:20.04

# Install 32-bit dependencies
RUN dpkg --add-architecture i386
RUN apt-get -qq update && \
    apt-get -qq --no-install-recommends install \
        bsdmainutils ca-certificates curl git unzip lsb-release \
        libc6:i386 libuuid1:i386 libfreetype6:i386 libssl1.1:i386 libcairo2:i386 && \
    apt-get clean all && rm -rf /var/lib/apt/lists/*
    

# Add launcher script
COPY smalltalkci /bin/smalltalkci
RUN chmod +x /bin/smalltalkci
