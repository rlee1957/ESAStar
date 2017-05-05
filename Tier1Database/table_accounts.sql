use esa;

drop table if exists accounts;

create table accounts
(
account_id bigint NOT NULL AUTO_INCREMENT,
application_id integer not null,
entity_type_id integer not null,
entity_id bigint not null,
group_name varchar(255) null,
individual_id bigint not null,
user_name varchar(255) not null,
password varchar(255) not null,
duress_phrase varchar(255) null,
account_type_id integer null,
parent_id bigint null,
pin varchar(255) null,
date_created varchar(25) not null,
UNIQUE KEY (entity_type_id, entity_id, account_type_id, application_id),
PRIMARY KEY (account_id)
);