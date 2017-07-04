use esa;

drop table if exists responses;

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
