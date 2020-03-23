FROM ubuntu:disco
RUN apt update

RUN apt install -y wget
RUN apt install -y cmake

# install g++
RUN apt install -y g++

# install python
RUN apt install -y python3-dev
RUN apt install -y python3

# install boost
WORKDIR /tmp
RUN wget https://dl.bintray.com/boostorg/release/1.71.0/source/boost_1_71_0.tar.bz2

RUN tar --bzip2 -xf /tmp/boost_1_71_0.tar.bz2
WORKDIR /tmp/boost_1_71_0

RUN ./bootstrap.sh --with-libraries=python,serialization --with-python-version=3
# make python3 default
RUN ln -s /usr/bin/python3 /usr/bin/python 
RUN ./b2 install