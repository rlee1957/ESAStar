use esa;

drop table if exists staff;

create table staff
(
staff_id bigint NOT NULL AUTO_INCREMENT,
merchant_id bigint not null,
individual_id bigint null,
role_id integer not null,
PRIMARY KEY(staff_id)
);