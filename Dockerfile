FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN echo "hola buenas tardes" > /var/www/html/index.html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]