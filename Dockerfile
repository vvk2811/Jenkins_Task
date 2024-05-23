FROM ubuntu
RUN apt update
RUN apt install nginx -y
COPY index.html /var/www/html
CMD ["nginx", "-g", "daemon off;"]
RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
