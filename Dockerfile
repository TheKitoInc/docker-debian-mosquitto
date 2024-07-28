FROM kito-debian:latest

RUN upgrade

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install mosquitto -y
RUN apt-get install mosquitto-clients -y

ENTRYPOINT [ "mosquitto" ]