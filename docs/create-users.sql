-- create database
CREATE DATABASE IF NOT EXISTS acl;
CREATE DATABASE IF NOT EXISTS oneterm;
CREATE DATABASE IF NOT EXISTS cmdb;

-- create user 
CREATE USER 'oneterm'@'%' IDENTIFIED BY '123456';
CREATE USER 'acl'@'%' IDENTIFIED BY '123456';
CREATE USER 'cmdb'@'%' IDENTIFIED BY '123456';

-- grant privileges
GRANT ALL PRIVILEGES ON `oneterm`.* TO 'oneterm'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON `acl`.* TO 'acl'@'%';
GRANT ALL PRIVILEGES ON  `cmdb`.* TO 'cmdb'@'%';
GRANT SYSTEM_VARIABLES_ADMIN ON *.* TO 'cmdb'@'%';

