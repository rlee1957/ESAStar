use esa;

drop table if exists entity_types;

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