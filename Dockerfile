# To build:
# docker build -t myhead .
FROM ubuntu18.04
MAINTAINER Mike Bee mbonsign@gmail.com

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get -y install wget
RUN apt-get -y install ca-certificates
RUN apt-get -y install bc
RUN apt-get -y install curl
RUN apt-get -y install git
RUN apt-get -y install dpkg
RUN apt-get -y install software-properties-common
RUN apt-get -y install cmake
RUN apt-get -y install libpulse-dev
RUN apt-get -y install festival-dev
RUN apt-get -y install festvox-en1
Run apt-get -y install libqt4-dev

#RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
#RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
RUN apt-get -y install nodejs
RUN apt-get -y install npm

RUN apt-get -y update
RUN mkdir ~/gitbase
WORKDIR ~/gitbase
RUN git clone  https://github.com/MikeyBeez/maslo-persona.git
