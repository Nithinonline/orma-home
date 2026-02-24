
FROM wordpress:php8.2-apache

# Railway gives dynamic port
ENV PORT 8080
EXPOSE 8080

# Configure Apache to use Railway PORT
RUN sed -i 's/80/${PORT}/g' /etc/apache2/ports.conf