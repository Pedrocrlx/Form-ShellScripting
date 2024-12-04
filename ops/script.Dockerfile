FROM ubuntu:latest

RUN apt update -y

RUN apt install -y vim

WORKDIR /home/ubuntu/scripts

COPY ./eticGeneral/Linux/samples .

RUN chmod +x ./script.sh

