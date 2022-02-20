FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

RUN apt update
RUN apt install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	software-properties-common \
	sudo \
	tzdata

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
RUN apt update
RUN apt install -y docker-ce

RUN apt install curl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

RUN apt update
RUN curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
        && chmod +x minikube
RUN mkdir -p /usr/local/bin/
RUN install minikube /usr/local/bin/