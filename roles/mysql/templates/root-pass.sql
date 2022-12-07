ALTER USER 'root'@'localhost' IDENTIFIED BY '{{ROOT_PASSWORD}}';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '{{ROOT_PASSWORD}}';

create database if not exists cities;
GRANT ALL ON cities.* TO 'shipping'@'%' IDENTIFIED BY 'secret';
GRANT ALL ON cities.* TO 'shipping'@'localhost' IDENTIFIED BY 'secret';
