use esa;

drop table if exists individuals;

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