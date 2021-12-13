FROM python:3.9

COPY ./requirements.txt /midware/
COPY ./hello.py /midware/
COPY ./start.sh /midware/

WORKDIR /midware/


RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list &&  \
    sed -i s@/security.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list


RUN apt-get clean && apt-get update && apt-get install -y curl

CMD [ "bash","start.sh" ]