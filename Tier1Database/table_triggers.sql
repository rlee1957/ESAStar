use esa;

drop table if exists triggers;

create table triggers
(
trigger_id bigint NOT NULL AUTO_INCREMENT,
tt_id bigint not null,
default_value varchar(255) null, 
workflow_id bigint not null,
PRIMARY KEY(trigger_id)
);