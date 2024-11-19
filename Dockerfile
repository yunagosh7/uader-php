# Usar la imagen oficial de MySQL
FROM mysql:8.0

# Establecer variables de entorno (opcional, pero recomendable)
# El password de root y el nombre de la base de datos inicial
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=userpassword

# Exponer el puerto predeterminado de MySQL
EXPOSE 3306

# Iniciar MySQL cuando se levante el contenedor
CMD ["mysqld"]
