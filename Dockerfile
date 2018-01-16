FROM debian:9

RUN useradd -ms /bin/bash ts3 && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget bzip2 && \
    cd /home/ts3 && \
    wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && \
    tar xfvj teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && \
    rm -rf teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && \
    chown -R ts3:ts3 teamspeak3-server_linux_amd64 && \
    apt-get remove -y wget bzip2 && \
    cd / && \
    ln -s /home/ts3/teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh

USER ts3

CMD ["/ts3server_minimal_runscript.sh", "start"]
