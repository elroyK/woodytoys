FROM ubuntu:xenial
LABEL maintainer "he201222@students.ephec.be"

RUN apt-get update && apt-get install bind9 bind9utils
RUN echo $(named -v) >> /vol/test/test.txt
