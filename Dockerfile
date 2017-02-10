FROM ubuntu:14.04
RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install https://github.com/shadowsocks/shadowsocks/archive/master.zip
ADD config.json ~/
EXPOSE 5000
ENTRYPOINT ["ssserver", "-c", "config.json"]
