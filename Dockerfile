FROM ubuntu:22.04


WORKDIR /opt


RUN apt-get update && apt-get -y install --no-install-recommends \
	pcscd libpcsclite-dev \
	python3 \
	python3-setuptools \
	python3-pycryptodome \
	python3-pyscard \
	python3-pip \
	git \
	usbutils \
	less

RUN git clone https://gitea.osmocom.org/sim-card/pysim.git
WORKDIR /opt/pysim
RUN pip3 install -r requirements.txt

