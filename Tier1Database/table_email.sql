use esa;

drop table if exists email;

create table email
(
email_id bigint NOT NULL AUTO_INCREMENT,
email varchar(500) not null,
verified varchar(1) not null default '0',
date_verified varchar(25) null,
verified_by bigint null,
date_created varchar(25),
PRIMARY KEY(email_id)
);