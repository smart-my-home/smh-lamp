FROM ubuntu:16.04
EXPOSE 8888
RUN apt update
RUN apt install git sudo -y
RUN sudo apt-get -y install make unrar-free autoconf automake libtool gcc g++ gperf \
    flex bison texinfo gawk ncurses-dev libexpat-dev python-dev python python-serial \
    sed git unzip bash help2man wget bzip2 libtool-bin python
RUN sudo adduser esp --gecos "esp 8266,8266,8266,8266" --disabled-password
RUN echo "esp:esp8266" | sudo chpasswd
RUN mkdir /app
COPY . /app
RUN chown esp /app
RUN chmod -R 777 /app
WORKDIR /app
RUN sudo -u esp sh -c "cd sdk/esp-open-rtos ; git submodule update --init --recursive ; cd .."
RUN sudo -u esp sh -c "cd sdk/esp-open-sdk && make toolchain esptool libhal STANDALONE=n"
RUN sudo -u esp sh ./docker.sh
CMD python -m SimpleHTTPServer 8888

