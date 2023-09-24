FROM ubuntu:22.04
CMD apt update
CMD apt install systemctl
CMD apt install squid

CMD systemctl restart squid.service
CMD systemctl status squid.service

EXPOSE 3128
