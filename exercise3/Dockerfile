FROM ubuntu:14.04
RUN apt-get -y update && apt-get -y install nginx
EXPOSE 8080
COPY default /etc/nginx/sites-enabled
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
