FROM wordpress:php8.2-apache

ENV PORT 8080

RUN a2dismod mpm_event mpm_worker || true \
    && a2enmod mpm_prefork \
    && sed -i 's/Listen 80/Listen 8080/' /etc/apache2/ports.conf \
    && sed -i 's/:80/:8080/' /etc/apache2/sites-available/000-default.conf

EXPOSE 8080