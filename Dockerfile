FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils
EXPOSE 80
COPY index.html /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D","FOREGROUND"]
