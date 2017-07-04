use esa;

drop table if exists preferred_address;

create table preferred_address
(
pa_id bigint NOT NULL AUTO_INCREMENT,
individual_id bigint not null,
address_id bigint NOT NULL,
PRIMARY KEY(pa_id)
);