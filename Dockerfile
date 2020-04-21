from wordpress:5-apache

ADD hamilton.1.26.zip       /var/www/html/wp-content/themes
ADD updraftplus.1.16.22.zip /var/www/html/wp-content/plugins

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]

