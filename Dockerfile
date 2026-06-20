FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y apache2 git && \
    apt-get clean

RUN git clone https://github.com/startbootstrap/startbootstrap-agency.git /tmp/site && \
    cp -r /tmp/site/* /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
