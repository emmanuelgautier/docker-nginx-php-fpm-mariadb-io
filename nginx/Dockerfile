FROM nginx

RUN getent group www-data || groupadd -r www-data \
  && id -u www-data &>/dev/null || useradd -r -g www-data www-data

RUN mkdir -p /var/www \
  && chown -R www-data:www-data /var/www

VOLUME /etc/nginx
VOLUME /var/log/nginx
VOLUME /var/www
