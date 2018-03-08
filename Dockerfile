FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ethereum/ethereum && \
    apt-get update && \
    apt-get install -y \
    ethereum \
    solc \
    jq \
    curl \
    git

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get update && \
    apt-get install -y nodejs

RUN npm install web3@0.20.1 truffle-contract bluebird jquery --save

WORKDIR /root
# 
# COPY data/genesis42.json /root/genesis42.json
# COPY bin/ /root/

# CMD ["/opt/consensys/launch42.sh"]
CMD ["bash"]