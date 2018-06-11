FROM ubuntu:xenial
LABEL maintainer "he201222@students.ephec.be"

RUN echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y bind9=${BIND_VERSION}* bind9-host=${BIND_VERSION}* webmin=${WEBMIN_VERSION}* dnsutils \
    && rm -rf /var/lib/apt/lists/*
RUN echo $(named -v) >> /vol/test/test.txt
