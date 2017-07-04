use esa;

drop table if exists evaluations;

create table evaluations
(
evaluation_id bigint NOT NULL AUTO_INCREMENT,
request_id bigint not null,
rating integer not null,
comments varchar(1000) null,
suggestions varchar(1000) null,
PRIMARY KEY(evaluation_id)
);