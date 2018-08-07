FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean
EXPOSE 80
CMD apachectl -D FOREGROUND
RUN rm -f var/www/html/index.html
COPY DockerContainer /var/www/html/
