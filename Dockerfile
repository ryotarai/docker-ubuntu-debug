FROM ubuntu:18.04
RUN apt update && \
  apt -y install dnsutils \
  curl \
  iproute2 \
  iputils-ping \
  netcat \
  openssh-client \
  vim \
  git \
  rsync \
  python3 \
  python3-pip
