FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y autoconf automake libtool make pkg-config libpng-dev libjpeg-dev libtiff-dev wget git clang

COPY ./compile /compile

RUN chmod a+rwx /compile

CMD ["bash", "./compile"]