use esa;

drop table if exists addresses;

Create table addresses
(
address_id bigint NOT NULL AUTO_INCREMENT,
address1 varchar(255) not null,
address2 varchar(255) null,
city varchar(255) not null,
state_prov varchar(255) not null,
postal_code varchar(25) not null,
country varchar(2) not null,
verified varchar(1) not null default '0',
date_verified varchar(25) null,
verified_by bigint null,
date_created varchar(25) not null,
PRIMARY KEY(address_id)
);