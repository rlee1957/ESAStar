drop table entity_types;

create table entity_types
(
entity_type_id integer NOT NULL AUTO_INCREMENT,
entity_type varchar(255) not null,
storage varchar(100) null,
description varchar(1000) null,
PRIMARY KEY (entity_type_id)
);

insert into entity_types (entity_type, storage, description) values ('Individual', 'individuals', 'A single individual');
insert into entity_types (entity_type, storage, description) values ('Family Individual', '', 'A family of individuals identified by parent');
insert into entity_types (entity_type, storage, description) values ('Institution Individual', 'institutions', 'An institution of individuals identified by parent');
insert into entity_types (entity_type, storage, description) values ('Establishment Individual', 'establishments', 'An established customer of ESA of individuals/staff identified by parent');
insert into entity_types (entity_type, storage, description) values ('ESA Individual', 'institutions', 'Individuals employed by ESA identified by ESA');

drop table entities;

create table entities
(
entity_id bigint NOT NULL AUTO_INCREMENT,
entity_type_id integer NOT NULL,
admin_id bigint not null,
entity_name varchar(255) not null,
entity_description varchar(1000) null,
date_created varchar(25) not null,
PRIMARY KEY (entity_id)
);

insert into entities (entity_type_id, admin_id, entity_name, entity_description, date_created) values (5, 1, 'ESA', 'Mother company connected to all the apps, individual, etc..', '2017-02-07');

drop table accounts;

create table accounts
(
account_id bigint NOT NULL AUTO_INCREMENT,
application_id integer not null,
entity_type_id integer not null,
entity_id bigint not null,
group_name varchar(255) null,
individual_id bigint not null,
user_name varchar(255) not null,
password varchar(255) not null,
duress_phrase varchar(255) null,
account_type_id integer null,
parent_id bigint null,
pin varchar(255) null,
date_created varchar(25) not null,
UNIQUE KEY (entity_type_id, entity_id, account_type_id, application_id),
PRIMARY KEY (account_id)
);

drop table applications;

create table applications
(
application_id integer NOT NULL AUTO_INCREMENT,
application_name varchar(255) not null,
application_description varchar(1000) null,
date_created varchar(25) not null,
PRIMARY KEY (application_id)
);

insert into applications (application_name, application_description, date_created) values ('ESA Management', 'Esa application used to add new clients, analyze data and maintain data.', '2017-02-07');
insert into applications (application_name, application_description, date_created) values ('Personal ESA App', 'Esa application available to the general population for free.', '2017-02-07');

--create table staff
--(
--staff_id varchar(255),
--establishment_id varchar(255),
--role_id varchar(255),
--individual_id varchar(255),
--PRIMARY KEY (staff_id)
--)

/*create table roles
(
role_id integer,
parent_id integer,
role_name varchar(255),
role_description varchar(1000),
PRIMARY KEY (role_id)
)*/

drop table account_types;

create table account_types
(
account_type_id integer NOT NULL AUTO_INCREMENT,
account_type varchar(255) not null,
account_description varchar(1000) null,
PRIMARY KEY (account_type_id)
);

insert into account_types (account_type, account_description) values ('administrator', 'full control all applications');
insert into account_types (account_type, account_description) values ('group', 'group account container');
insert into account_types (account_type, account_description) values ('individual', 'Full control of this account');

drop table individuals;

create table individuals
(
individual_id bigint NOT NULL AUTO_INCREMENT,
name_prefix varchar(255) null,
first_name varchar(255) null,
middle_name varchar(255) null,
last_name varchar(255) null,
name_suffix varchar(255) null,
nick_name varchar(255) null,
full_name varchar(800) not null,
birth_date varchar(25) not null,
preferred_name varchar(800) null ,
date_created varchar(25) not null,
PRIMARY KEY(individual_id)
);

drop table addresses;

Create table addresses
(
address_id bigint NOT NULL AUTO_INCREMENT,
address1 varchar(255) not null,
address2 varchar(255) null,
city varchar(255) not null,
state_prov varchar(255) not null,
postal_code varchar(25) not null,
country varchar(2) not null,
verified tinyint not null default 0,
date_verified varchar(25) null,
verified_by bigint null,
date_created varchar(25)not null,
PRIMARY KEY(address_id)
);

insert into addresses (address1, city, state_prov, postal_code, country, verified, date_verified, verified_by, date_created) values ('1402 S Oaklawn Dr', 'Boise', 'ID', '83709', 'US', 1, '2017-02-07', 1, '2017-02-07');

drop table phone;

Create table phone
(
phone_id varchar(50) not null unique,
phone_raw varchar(100) not null,
country varchar(2) not null,
text_messaging tinyint not null default 0,
verified tinyint not null default 0,
date_verified varchar(25) null,
verified_by bigint null,
date_created varchar(25) not null,
PRIMARY KEY(phone_id)
);

insert into phone (phone_id, phone_raw, country, text_messaging, verified, date_verified, verified_by, date_created) values ('2089959553', '(208) 995-9553',  'US', 1, 1, '2017-02-07', 1, '2017-02-07');

drop table email;

Create table email
(
email_id varchar(500) not null unique,
verified tinyint not null default 0,
date_verified varchar(25) null,
verified_by bigint null,
date_created varchar(25) not null,
PRIMARY KEY(email_id)
);

insert into email (email_id, verified, date_verified, verified_by, date_created) values ('rlee.sn@gmail.com', 1, '2017-02-07', 1, '2017-02-07');

/*create table services
(
service_id varchar(255),
service_type_id integer,
service_name varchar(255),
service_definition varchar(1000),
application_id varchar(255),
establishment_id varchar(255),
PRIMARY KEY(service_id)
);

create table service_types
(
service_type_id integer,
service_type varchar(255),
service_type_description varchar(1000),
PRIMARY KEY(service_type_id)
);
*/
create table tasks
(
task_id bigint NOT NULL AUTO_INCREMENT,
task_type_id integer not null,
service_id bigint not null,
task_name varchar(255) not null,
task_description varchar(255) not null,
status varchar(255) not null,
escalation1_duration_minutes integer null,
escalation1_staff_id varchar(255) null,
escalation2_duration_minutes integer null,
escalation2_staff_id varchar(255) null,
escalation3_duration_minutes integer null,
escalation3_staff_id varchar(255) null,
datetime_created varchar(25) not null,
PRIMARY KEY(task_id)
);
/*
create table task_types
(
task_type_id integer,
task_type varchar(255),
task_type_description varchar(1000),
PRIMARY KEY(task_type_id)
);*/

create table requests
(
request_id bigint NOT NULL AUTO_INCREMENT,
request_type_id integer not null,
account_id bigint not null,
service_id bigint not null,
request_timestamp varchar(255) not null,
scheduled_datetime varchar(255) null,
PRIMARY KEY(request_id)
);

/*create table request_types
(
request_type_id integer,
request_type varchar(255),
request_type_description varchar(1000),
PRIMARY KEY(request_type_id)
);*/

create table responses
(
response_id bigint NOT NULL AUTO_INCREMENT,
request_id bigint not null,
task_id bigint not null,
status_id integer not null,
status_date varchar(25) not null,
closed integer not null default 0,
PRIMARY KEY(response_id)
);

create table evaluations
(
evaluation_id bigint NOT NULL AUTO_INCREMENT,
request_id bigint not null,
rating integer not null,
comments varchar(1000) null,
suggestions varchar(1000) null,
PRIMARY KEY(evaluation_id)
);

/*create table status
(
status_id integer,
status varchar(255),
status_description varchar(1000),
PRIMARY KEY(status_id)
);*/

create table workflows
(
todo_id bigint NOT NULL AUTO_INCREMENT,
service_id bigint not null,
task_id bigint not null,
parent_task_id integer null,
PRIMARY KEY(todo_id)
);

/*create table contact_info
(
contact_id varchar(255),
contact_type integer,
entity_id varchar(255),
contact_method_id integer,
method_id varchar(255),
PRIMARY KEY(contact_id)
);*/

/*create table contact_types
(
contact_type_id integer,
contact_type varchar(255),
contact_type_description varchar(1000),
PRIMARY KEY(contact_type_id)
);
insert into contact_types (contact_type_id, contact_type, contact_type_description) values (0, 'individuals', 'personal contact information');*/

/*create table contact_methods
(
contact_method_id integer,
contact_method varchar(255),
contact_method_description varchar(1000),
PRIMARY KEY(contact_type_id)
);*/

/*create table preferences
(
preference_id varchar(255),
preference_type_id varchar(255),
method_id varchar(255),
priority integer,
preference_label varchar(255),
preference_description varchar(1000),
PRIMARY KEY(preference_id)
)

create table menu
(
menu_item_id integer,
item_id integer,
parent integer,
PRIMARY KEY(item_id)
)

create table service_item_types
(
service_item_type_id integer,
service_item_label varchar(255),
service_item_description varchar(1000),
PRIMARY KEY(service_item_type_id)
);

insert into service_type_items (service_item_type_id, service_item_label, service_item_description) values 
(-1, 'root', 'root'),
(0, 'generic category', 'generic category'),
(1, 'service menu item', 'service menu item triggers a service request using the associated item_id, if the item or item(s) are requested at or below the service menu item'),
(2, 'service option', 'options for the service menu item');
(3, 'service menu', 'menu under a service menu item');


create table items
(
item_id integer,
service_item_type_id integer,
item_type_id integer,
item_label varchar(255),
item_description varchar(1000),
parent_id integer,
PRIMARY KEY(item_type_id)
)

create table item_types
(
item_type_id integer,
item_type varchar(100),
PRIMARY KEY(item_type_id)
);

insert into item_types (item_type_id, item_type) values (-1, 'root');
insert into item_types (item_type_id, item_type) values (0, 'menu');
insert into item_types (item_type_id, item_type) values (1, 'integer'); 
insert into item_types (item_type_id, item_type) values (2, 'small string'); 
insert into item_types (item_type_id, item_type) values (3, 'large string');
insert into item_types (item_type_id, item_type) values (4, 'boolean');
insert into item_types (item_type_id, item_type) values (5, 'currency');
insert into item_types (item_type_id, item_type) values (6, 'date');
insert into item_types (item_type_id, item_type) values (7, 'time');
insert into item_types (item_type_id, item_type) values (7, 'service menu');
insert into item_types (item_type_id, item_type) values (7, 'service item');
*/

