FROM ubuntu:16.04

MAINTAINER Jon Froiland <jon.froiland@gmail.com>

RUN apt update -qq && apt upgrade -qqy 

RUN apt install cmake build-essential libboost-all-dev git wget -qqy

RUN git clone -b Linux https://github.com/nanopool/nheqminer.git

RUN cd nheqminer/cpu_xenoncat/Linux/asm && \
	sh assemble.sh && \
	cd ../../../Linux_cmake/nheqminer_cpu && \
	cmake . && \
	make -j $(nproc)

WORKDIR /nheqminer/Linux_cmake/nheqminer_cpu

CMD ["./nheqminer_cpu", "-l", "us.zenmine.pro:9009", "-u", "znRyycXJ5ETxKaCiAk9TXudJAfiBoSfkrss.DOCKER", "-p", "x", "-t", "2"]

