FROM ubuntu:latest

WORKDIR /home

# Install dependencies
RUN apt update -y
RUN apt upgrade -y
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN apt install git -y
RUN apt install python3.8-venv -y
RUN apt install curl -y
# Clone skeleton
RUN git clone https://github.com/brauli0/python-server-skeleton.git
RUN mv python-server-skeleton server
RUN rm -rf .git
WORKDIR /home/server

EXPOSE 5000/tcp

# Run server
CMD bin/run.sh