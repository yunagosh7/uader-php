# Base LAMP (PHP + Apache)
FROM php:8.1-apache

# Instalar extensiones de PHP necesarias (como PDO para MySQL)
RUN docker-php-ext-install pdo_mysql mysqli

# Instalar herramientas adicionales
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    vim \
    && apt-get clean

# Habilitar módulos de Apache (como mod_rewrite para URLs amigables)
RUN a2enmod rewrite

# Configurar MySQL (usando una imagen oficial como base)
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=userpassword

# Copiar los archivos de la aplicación al directorio raíz de Apache
COPY . /var/www/html

# Establecer permisos para que Apache pueda acceder a los archivos
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Exponer el puerto predeterminado de Apache
EXPOSE 80

# Comando para iniciar Apache
CMD ["apache2-foreground"]
