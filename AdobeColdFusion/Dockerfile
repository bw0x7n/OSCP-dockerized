FROM phusion/baseimage:0.9.9
MAINTAINER AmineLaamiri <blackwarriorxtn@gmail.com>
EXPOSE 8500 8500
VOLUME ["/var/www", "/tmp/config"]

ENV DEBIAN_FRONTEND noninteractive
ENV REFRESHED_AT 2015_02_23_1

RUN apt-get update
RUN apt-get install -y wget unzip xsltproc apache2 default-jre && apt-get clean

ADD ./build/install/ /tmp/

RUN chmod 755 /tmp/coldfusion-801-lin64.bin
RUN chmod 755 /tmp/install-cf8.sh
RUN sudo /tmp/install-cf8.sh

# Replace the default startup script with a slightly modified one which logs to console
RUN mv /tmp/coldfusion /opt/coldfusion8/bin/coldfusion

ADD ./build/service/ /etc/service/
RUN chmod -R 755 /etc/service/coldfusion8

ADD ./build/my_init.d/ /etc/my_init.d/

RUN rm /tmp/*.bin
RUN rm /tmp/*.sh
