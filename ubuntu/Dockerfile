FROM ubuntu:22.04
WORKDIR /app/terminusdb
ARG VERSION=10.1.0
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal && \
    sudo add-apt-repository ppa:swi-prolog/stable -y && \
    sudo apt update && \
    sudo apt install curl git make clang swi-prolog -y
RUN curl -sL "https://github.com/terminusdb/terminusdb/archive/refs/tags/v${VERSION}.tar.gz" > /tmp/terminusdb.tar.gz \
    && tar -xvf /tmp/terminusdb.tar.gz && cd "terminusdb-${VERSION}" \
    && make && mv ./terminusdb ../
