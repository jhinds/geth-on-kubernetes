FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ethereum/ethereum && \
    apt-get update && \
    apt-get install -y \
    build-essential \
    ethereum \
    solc \
    jq \
    curl \
    git

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get update && \
    apt-get install -y nodejs

ENV WEB3_VERSION=1.0.0-beta.30
RUN npm install web3@$WEB3_VERSION
RUN npm install truffle-contract bluebird jquery --save

WORKDIR /root
COPY genesis42.json /root/genesis42.json
COPY launch42.sh /root/launch42.sh
RUN chmod +x /root/launch42.sh

CMD ["/root/launch42.sh"]
