FROM nginx

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install python3 python3-pip

COPY build-and-test.sh /usr/share/nginx/html
COPY Dockerfile  /usr/share/nginx/html
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf