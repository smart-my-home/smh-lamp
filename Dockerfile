FROM esp-sdk:latest
RUN apt install -y python
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN  make -C led
EXPOSE 8888
CMD python -m SimpleHTTPServer 8888