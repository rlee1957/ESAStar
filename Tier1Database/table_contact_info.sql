use esa;

drop table if exists contact_info;

create table contact_info
(
ci_id bigint NOT NULL AUTO_INCREMENT,
individual_id bigint not null,
contact_method varchar(100) not null,
nick_name varchar(100) null,
ci_method varchar(100) not null,
info_id bigint not null,
PRIMARY KEY(ci_id)
);