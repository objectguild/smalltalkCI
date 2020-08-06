FROM ubuntu:18.04

RUN apt-get -qq update && \
    apt-get -qq --no-install-recommends install \
        bsdmainutils ca-certificates curl git unzip openssh-client openjdk-8-jre-headless && \
    apt-get clean all && rm -rf /var/lib/apt/lists/*

# Add launcher script
COPY smalltalkci /bin/smalltalkci
RUN chmod +x /bin/smalltalkci
