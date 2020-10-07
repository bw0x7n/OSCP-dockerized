FROM ubuntu:12.04

MAINTAINER AmineLaamiri <blackwarriorxtn@gmail.com>

USER root
RUN apt-get update && apt-get install wget libstdc++5 -y

ADD installer.properties /opt/installer.properties
ENV COLD_FUSION_URL = "##changeurl here"/coldfusion-801-lin64.bin?dl=0;
RUN wget -O /opt/coldfusion-801-lin64.bin -q --no-check-certificate $COLD_FUSION_URL && chmod +x /opt/coldfusion-801-lin64.bin && /opt/./coldfusion-801-lin64.bin -i silent -f /opt/installer.properties

EXPOSE 8500

ADD startup.sh /opt/startup.sh
CMD ["sh", "/opt/startup.sh"]
