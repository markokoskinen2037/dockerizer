FROM ubuntu:16.04

RUN apt-get update

# Install docker...
RUN apt-get install -y git\
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable" && \
    apt-get update && \
    apt-get install -y docker-ce && \
    git clone https://github.com/markokoskinen2037/dockerizer.git

WORKDIR /dockerizer

ENTRYPOINT [ "./script.sh" ]