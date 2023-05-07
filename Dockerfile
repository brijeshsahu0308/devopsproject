FROM centos:latest
MAINTAINER brijeshsahu0308@gmail.com
RUN yum install -y httpd
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html
WORKDIR /var/www/html/
EXPOSE 80 22