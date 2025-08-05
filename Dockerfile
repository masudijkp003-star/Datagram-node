FROM ubuntu:22.04

WORKDIR /app

RUN apt update && apt install -y wget tar

# Download datagram-cli binary
RUN wget https://download.datagram.network/datagram-cli-x86_64-linux.tar.gz \
    && tar -xvzf datagram-cli-x86_64-linux.tar.gz \
    && chmod +x datagram-cli

# Jalankan node dengan License Key dari Environment Variable
CMD ./datagram-cli run -- -key ${LICENSE_KEY}
