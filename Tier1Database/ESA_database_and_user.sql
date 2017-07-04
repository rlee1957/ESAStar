CREATE DATABASE esa;

CREATE USER 'webuser'@'%' IDENTIFIED BY 'sseccabew';
GRANT ALL PRIVILEGES ON esa.* TO 'webuser'@'%';
CREATE USER 'webuser'@'localhost' IDENTIFIED BY 'sseccabew';
GRANT ALL PRIVILEGES ON esa.* TO 'webuser'@'localhost';
FLUSH PRIVILEGES;