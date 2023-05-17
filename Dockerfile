FROM ubuntu:latest
MAINTAINER brijeshsahu0308@gmail.com
RUN apt update && apt upgrade -y
RUN apt install apache2 -y 
RUN apt-get install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 22 443 8080