FROM ubuntu:latest

RUN apt-get update && apt-get install sysctl && apt-get install -y squid

RUN sysctl -w net.ipv6.loopback=1

RUN eecho "dns_v4_first on" >> /etc/squid/squid.conf
RUN echo "http_port 127.0.0.1:3128" >> /etc/squid/squid.conf
RUN echo "http_access allow all" >> /etc/squid/squid.conf

EXPOSE 3128

CMD ["squid", "-f", "/etc/squid/squid.conf"]
