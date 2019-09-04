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
  python3-pip \
  wget
RUN pip3 install ansible==2.7.8 kubernetes slackclient
RUN curl -o /usr/local/bin/kubectl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
  chmod +x /usr/local/bin/kubectl
