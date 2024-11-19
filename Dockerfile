# Usar una imagen base oficial de PHP con Apache
FROM php:8.1-apache

# Instalar extensiones de PHP necesarias
RUN docker-php-ext-install pdo_mysql mysqli

# Habilitar módulos de Apache (si es necesario)
RUN a2enmod rewrite

# Copiar los archivos de la aplicación al directorio web de Apache
COPY . /var/www/html

# Configurar permisos para el directorio
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Configurar el directorio de trabajo
WORKDIR /var/www/html

# Exponer el puerto predeterminado de Apache
EXPOSE 80

# Comando por defecto para iniciar Apache
CMD ["apache2-foreground"]
