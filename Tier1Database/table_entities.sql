use esa;

drop table if exists entities;

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

insert into entities (entity_type_id, admin_id, entity_name, entity_description, date_created) values (5, 1, 'ESA', 'Mother company connected to all the apps, individual, etc..', '2017-04-26');