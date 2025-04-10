FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y gcc
RUN apt-get install -y python3-dev
RUN apt-get install -y tar
RUN apt-get install -y libc-dev-bin
RUN apt-get install -y vim
RUN apt-get install -y chrpath
RUN apt-get install -y cpio
RUN apt-get install -y diffstat
RUN apt-get install -y g++
RUN apt-get install -y gawk
RUN apt-get install -y git
RUN apt-get install -y make
RUN apt-get install -y patch
RUN apt-get install -y wget
RUN apt-get install -y bzip2
RUN apt-get install -y file

RUN apt-get install -y locales
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8

WORKDIR /workdir

