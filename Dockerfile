FROM wordpress:php8.2-apache

# Railway uses PORT automatically
ENV PORT 8080

# Change Apache to listen on 8080 safely
RUN sed -i 's/Listen 80/Listen 8080/' /etc/apache2/ports.conf \
    && sed -i 's/:80/:8080/' /etc/apache2/sites-available/000-default.conf

EXPOSE 8080