use esa;

drop table if exists preferred_email;

create table preferred_email
(
pe_id bigint NOT NULL AUTO_INCREMENT,
individual_id bigint not null,
email_id bigint NOT NULL,
PRIMARY KEY(pe_id)
);