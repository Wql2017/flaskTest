FROM ubuntu:20.04

COPY ./hello.py /root/flaskdemo/

WORKDIR /root/flaskdemo/

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list &&  \
    sed -i s@/security.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list

RUN apt-get clean && apt-get update && apt-get install -y python3 && apt-get install -y python3-pip

RUN pip3 install Flask && apt-get install -y curl

CMD [ "bash" ]