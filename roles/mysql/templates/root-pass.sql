ALTER USER 'root'@'localhost' IDENTIFIED BY '{{ROOT_PASSWORD}}';
ALTER USER 'root'@'%' IDENTIFIED BY '{{ROOT_PASSWORD}}';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
