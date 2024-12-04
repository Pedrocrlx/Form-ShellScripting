FROM ubuntu:latest

RUN apt update -y

RUN apt install -y vim

WORKDIR /home/ubuntu/scripts

COPY ./samples .

RUN chmod +x ./01.sh ./ex_loop.sh ./dir_spammer.sh

ENTRYPOINT  [ "./dir_spammer.sh" ]

#RUN ./dir_spammer.sh
 
#CMD [ "cd" , "script_sample_folder" ] 
