FROM debian:9-slim

ENV TS3SERVER_LICENSE=accept

RUN useradd -ms /bin/bash ts3 && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget bzip2 && \
    cd /home/ts3 && \
    wget https://files.teamspeak-services.com/releases/server/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2 && \
    tar xfvj teamspeak3-server_linux_amd64-3.5.1.tar.bz2 && \
    rm -rf teamspeak3-server_linux_amd64-3.5.1.tar.bz2 && \
    chown -R ts3:ts3 teamspeak3-server_linux_amd64 && \
    apt-get remove -y wget bzip2 && \
    cd / && \
    ln -s /home/ts3/teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh

USER ts3

CMD ["/ts3server_minimal_runscript.sh", "start"]
