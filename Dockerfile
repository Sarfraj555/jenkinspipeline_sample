FROM centos:latest
MAINTER Sarfraj
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/royal-cars.zip /var/www/html
WORKDIR /var/www/html
RUN unzip royal-cars.zip
RUN cp -rvf royal-cars/* .
RUN rm -rf royal-cars royal-cars.zip
EXPOSE 80
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
