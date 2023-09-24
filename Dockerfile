FROM ubuntu:22.04
CMD sudo apt update
CMD sudo apt install squid

CMD sudo squid

EXPOSE 3128
