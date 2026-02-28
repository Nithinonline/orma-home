FROM wordpress:php8.2-apache

ENV PORT=8080

# Change Apache to use Railway port safely
RUN sed -i "s/Listen 80/Listen ${PORT}/" /etc/apache2/ports.conf \
    && sed -i "s/:80/:${PORT}/" /etc/apache2/sites-available/000-default.conf

EXPOSE 8080