FROM ubuntu:latest

RUN apt-get update && apt-get install -y squid

EXPOSE 3128

CMD ["squid", "-f", "/etc/squid/squid.conf"]
