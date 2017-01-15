FROM debian:latest

MAINTAINER Moeyard TRAN "moeyard@moeyard.com"

RUN apt-get update && \
	apt-get install -y shadowsocks && \
	rm -rf /var/lib/apt/lists/* && \
	apt-get clean

RUN echo 'root:root' |chpasswd
	
EXPOSE 8118

CMD ["ssserver","-p","8118"]
