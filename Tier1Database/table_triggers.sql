drop table triggers;

create table triggers
(
trigger_id bigint NOT NULL AUTO_INCREMENT,
tt_id bigint not null,
default_value varchar(255) null, 
workflow_id bigint not null,
PRIMARY KEY(tt_id)
)