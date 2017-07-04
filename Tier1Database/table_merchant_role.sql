use esa;

drop table if exists merchant_role;

create table merchant_role
(
merchant_role_id bigint NOT NULL AUTO_INCREMENT,
merchant_id bigint not null,
individual_id bigint null,
role_id integer not null,
PRIMARY KEY(merchant_role_id)
);
