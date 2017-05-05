use esa;

drop table if exists role;

create table role
(
role_id bigint NOT NULL AUTO_INCREMENT,
role_name varchar(255) not null,
role_description integer not null,
PRIMARY KEY(role_id)
);