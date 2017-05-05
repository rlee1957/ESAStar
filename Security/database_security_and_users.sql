drop database if exists security;

create database security;

CREATE USER 'security_administrator'@'localhost' IDENTIFIED BY 'ESA-Star2017LetsMake$$';
GRANT ALL PRIVILEGES ON security.* TO 'security_administrator'@'localhost';
CREATE USER 'security_reader'@'%' IDENTIFIED BY '99TY6-as0!K-NyR7?-9q1AP-#LOmh';
GRANT ALL PRIVILEGES ON security.* TO 'security_reader'@'%';
CREATE USER 'security_reader'@'localhost' IDENTIFIED BY '99TY6-as0!K-NyR7?-9q1AP-#LOmh';
GRANT ALL PRIVILEGES ON security.* TO 'security_reader'@'localhost';

FLUSH PRIVILEGES;
