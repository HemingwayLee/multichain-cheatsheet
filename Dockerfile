FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  vim \
  wget \
  net-tools

WORKDIR /tmp
RUN wget https://www.multichain.com/download/multichain-1.0.6.tar.gz
RUN tar -xvzf multichain-1.0.6.tar.gz

WORKDIR /tmp/multichain-1.0.6
RUN mv multichaind multichain-cli multichain-util /usr/local/bin

ENTRYPOINT ["/bin/bash"]
