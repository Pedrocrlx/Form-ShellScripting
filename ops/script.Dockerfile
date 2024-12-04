FROM ubuntu:latest

RUN apt update -y

RUN apt install -y vim

WORKDIR /home/ubuntu/scripts

COPY ./samples .

RUN chmod +x ./script.sh ./ex_loop.sh

