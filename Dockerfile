FROM ubuntu:22.04
RUN apt update && \
  DEBIAN_FRONTEND=noninteractive apt -y install dnsutils \
  curl \
  iproute2 \
  iputils-ping \
  netcat \
  openssh-client \
  vim \
  git \
  rsync \
  python3 \
  python3-pip \
  wget \
  tcpdump \
  net-tools \
  strace
RUN pip3 install ansible==2.7.8 kubernetes slackclient
RUN curl -o /usr/local/bin/kubectl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
  chmod +x /usr/local/bin/kubectl
