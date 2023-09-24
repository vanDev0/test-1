FROM ubuntu:latest

RUN apt-get update && apt-get install -y squid

RUN echo "http_port 127.0.0.1:3128" >> /etc/squid/squid.conf
RUN echo "acl all src all" >> /etc/squid/squid.conf
RUN echo "http_access allow all" >> /etc/squid/squid.conf

EXPOSE 3128

CMD ["squid", "-f", "/etc/squid/squid.conf"]
