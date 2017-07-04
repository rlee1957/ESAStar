use esa;

drop table if exists preferred_phone;

create table preferred_phone
(
pp_id bigint NOT NULL AUTO_INCREMENT,
individual_id bigint not null,
phone_id bigint NOT NULL,
PRIMARY KEY(pp_id)
);