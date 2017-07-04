use esa;

drop table if exists phone;

create table phone
(
phone_id bigint NOT NULL AUTO_INCREMENT,
phone_num varchar(30) not null,
phone_raw varchar(50) null,
country varchar(2) null,
text_messaging varchar(1) null,
verified varchar(1) not null default '0',
date_verified varchar(25) null,
verified_by bigint null,
date_created varchar(25),
PRIMARY KEY(phone_id)
);