use esa;

drop table if exists contact_preference;

create table contact_preference
(
cp_id bigint NOT NULL AUTO_INCREMENT,
individual_id bigint not null,
ci_id bigint NOT NULL,
PRIMARY KEY(cp_id)
);