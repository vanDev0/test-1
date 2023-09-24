FROM ubuntu:22.04
USER root

CMD ["apt", "install", "squid"]

CMD ["sudo", "squid"]

EXPOSE 3128
