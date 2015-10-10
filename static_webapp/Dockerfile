FROM debian:jessie

COPY . /var/www/mystaticwebapp.com

RUN getent group www-data || groupadd -r www-data \
  && id -u www-data &>/dev/null || useradd -r -g www-data www-data

RUN mkdir -p /var/www \
  && chown -R www-data:www-data /var/www/mystaticwebapp.com

VOLUME /var/www/mystaticwebapp.com
