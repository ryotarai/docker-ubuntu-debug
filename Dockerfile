FROM ubuntu:18.04
RUN apt update && \
  apt -y install dnsutils \
  curl \
  iproute2 \
  iputils-ping \
  netcat \
  openssh-client \
  vim
