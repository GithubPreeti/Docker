FROM git Docker/735f80812f90
ADD DockerContainer /var/www/html/
CMD apachectl -D FOREGROUND
RUN rm var/www/html/index.html