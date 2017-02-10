FROM ubuntu:14.04
RUN apt-get update && apt-get install -y python-pip
RUN pip install https://github.com/shadowsocks/shadowsocks/archive/master.zip
ADD config.json /config.json
EXPOSE 5000
ENTRYPOINT ["ssserver", "-c", "/config.json"]
