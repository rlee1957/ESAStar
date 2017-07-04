use esa;

drop table if exists merchants;

create table merchants
(
merchant_id bigint NOT NULL AUTO_INCREMENT,
parent_id bigint NULL,
merchant_name varchar(255) not null,
merchant_description varchar(1000) null,
date_added varchar(25) not null,
status varchar(100) not null,
PRIMARY KEY(merchant_id)
);