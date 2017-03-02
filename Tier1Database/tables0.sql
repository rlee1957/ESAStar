CREATE DATABASE esa;

CREATE USER 'webuser'@'%' IDENTIFIED BY 'sseccabew';
GRANT ALL PRIVILEGES ON esa.* TO 'webuser'@'%';
CREATE USER 'webuser'@'localhost' IDENTIFIED BY 'sseccabew';
GRANT ALL PRIVILEGES ON esa.* TO 'webuser'@'localhost';
FLUSH PRIVILEGES;

drop table object_types;

create table object_types
(
object_type_id integer NOT NULL AUTO_INCREMENT,
class_name varchar(100) not null,
object_type varchar(100) not null,
description varchar(1000),
PRIMARY KEY(object_type_id)
);

 
insert into object_types (class_name, object_type, description) values('node', 'root', 'Node Class that has no parent and is a container of nodes');
insert into object_types (class_name, object_type, description) values('node', 'list', 'Node Class that contains a list of nodes and has a parent');
insert into object_types (class_name, object_type, description) values('node', 'node', 'Node Class an ordered can contain options and properties, has a parent');
insert into object_types (class_name, object_type, description) values('node', 'options', 'Node Class that has no contents other than an ordered pair (name and value), contains a list of type option, can have properties, has a parent');
insert into object_types (class_name, object_type, description) values('node', 'option', 'Node Class that has no contents other than an ordered pair (name and value), can have properties, has a parent');
insert into object_types (class_name, object_type, description) values('node', 'properties', 'Node Class that is a list of type property, has no options or properties, has a parent');
insert into object_types (class_name, object_type, description) values('node', 'property', 'Node Class that has no contents other than an ordered pair (name and value), has a parent');
insert into object_types (class_name, object_type, description) values('data', 'string', 'Data Class: Simple array of characters');
insert into object_types (class_name, object_type, description) values('data', 'integer', 'Data Class: Number of type integer (positive or negative)(no decimals or fractions)'),
insert into object_types (class_name, object_type, description) values('data', 'boolean', 'Data Class: (0 or 1)(True or False)(Yes or No)'),
insert into object_types (class_name, object_type, description) values('data', 'double', 'Data Class: Number that can conatin decimal values (double)(float)(currency)'),
insert into object_types (class_name, object_type, description) values('data', 'date', 'Data Class: Date Value only (Year-Month-Day)'),
              ('data', 'time', 'Data Class: Time Value only (24Hour:Minutes:Seconds)'),
              ('data', 'timestamp', 'Data Class: Date and Time (Year-Month-Day 24Hour:Minutes:Seconds)'),
              ('data', 'url', 'Data Class: Web address'),
              ('object', 'email', 'Object Class: id of an Email address (see email table)'),
              ('object', 'phone', 'Object Class: id of a Phone number (see phone table)'),
              ('object', 'array', 'Object Class: id of an array (see arrays table)');

drop table local_services;
			  
create table local_services 
(
local_service_id bigint NOT NULL,
parent_id bigint NULL,
node_name varchar(255) not null,
node_value varchar(1000) null,
object_type_id integer not null,
icon_static varchar(500) null,
icon_closed varchar(500) null,
icon_open varchar(500) null,
position integer null,
PRIMARY KEY(local_service_id)
);

drop table properties;

create table properties 
(
property_id integer NOT NULL AUTO_INCREMENT,
object_type_id integer not null,
property_name varchar(255) null,
PRIMARY KEY(property_id)
);



drop table arrays;

create table arrays
(
array_id integer not null AUTO_INCREMENT,
array_name varchar(255) not null,
sort_by varchar(25) null,
sort_method varchar(25) null,
is_binary tinyint not null default 0,
PRIMARY KEY(array_id)
);

insert into arrays (array_name, sort_by, sort_method, is_binary) values ('yes_no', 'item_key', 'desc', 1);
insert into arrays (array_name, sort_by, sort_method, is_binary) values ('true_false', 'item_key', 'desc', 1);
insert into arrays (array_name, sort_by, sort_method, is_binary) values ('sort_mentod', 'item_value', 'asc', 0);

drop table array_items;

create table array_items
(
item_id integer not null AUTO_INCREMENT,
array_id integer not null,
item_key varchar(255) not null,
item_value varchar(255) not null,
PRIMARY KEY(item_id)
);

insert into array_items (array_id, item_key, item_value) values (1, '0', 'No');
insert into array_items (array_id, item_key, item_value) values (1, '1', 'Yes');
insert into array_items (array_id, item_key, item_value) values (2, '0', 'False');
insert into array_items (array_id, item_key, item_value) values (2, '1', 'True');
insert into array_items (array_id, item_key, item_value) values (3, 'none', 'Not Sorted');
insert into array_items (array_id, item_key, item_value) values (3, 'asc', 'Sort Ascending');
insert into array_items (array_id, item_key, item_value) values (3, 'desc', 'Sort Descending');

create table book
(
book_number integer NOT NULL AUTO_INCREMENT,
book_id varchar(255) not null,
full_name varchar(255) not null,
email varchar(400) not null,
phone varchar(25) not null,
book_date varchar(25)not null,
occupants integer not null,
arrival_date varchar(255) not null,
PRIMARY KEY(book_number)
);

insert into book (book_id, full_name, email, phone, book_date, occupants, arrival_date) values ('RussellBLee1957-1', 'Russell B Lee', 'rlee.sn@gmail.com', '2089959553', '2017-03-01', 1, '2017-03-10');

