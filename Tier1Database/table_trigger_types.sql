use esa;

drop table if exists trigger_types;

create table trigger_types
(
tt_id bigint NOT NULL AUTO_INCREMENT,
trigger_type varchar(255) not null,
value_type varchar(35) not null,
PRIMARY KEY(tt_id)
);

insert into trigger_types (trigger_type, value_type) values ('user request', 'integer');
insert into trigger_types (trigger_type, value_type) values ('merchant request', 'integer');
insert into trigger_types (trigger_type, value_type) values ('user scheduled', 'datetime');
insert into trigger_types (trigger_type, value_type) values ('merchant scheduled', 'datetime');
insert into trigger_types (trigger_type, value_type) values ('timed', 'integer');
insert into trigger_types (trigger_type, value_type) values ('start', 'integer');
insert into trigger_types (trigger_type, value_type) values ('finish', 'integer');

