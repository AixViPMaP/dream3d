# Dockerfile
# DREAM.3D
# (c) 2016-18 ICMEaix RWTH Aachen University

FROM ubuntu:14.04
MAINTAINER Lukas Koschmieder <lukas.koschmieder@rwth-aachen.de>

RUN apt update
RUN apt install -y --no-install-recommends libglib2.0 libgl1-mesa-glx libtbb-dev wget
RUN wget http://dream3d.bluequartz.net/binaries/DREAM3D-6.4.197-Linux-x86_64.tar.gz \
&& tar -xf DREAM3D-*.tar.gz \
&& rm -rf DREAM3D-*.tar.gz \
&& mv DREAM3D-6.4.197-Linux-x86_64 /opt/dream3d

COPY ./env.sh /env.sh
