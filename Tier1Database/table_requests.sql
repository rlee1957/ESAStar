use esa;

drop table if exists requests;

create table requests
(
request_id bigint NOT NULL AUTO_INCREMENT,
request_timestamp varchar(255) not null,
trigger_type integer not null,
trigger_criteria varchar(25) null,
status varchar(100) not null,
scheduled_datetime varchar(255) null,
PRIMARY KEY(request_id)
);