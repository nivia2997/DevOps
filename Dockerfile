FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install apache2 -y
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "D", "FOREGOUP"]