FROM ubuntu:14.04
RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install https://github.com/shadowsocks/shadowsocks.zip
