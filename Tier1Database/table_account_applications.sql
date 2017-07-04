drop table if exists account_applications;

create table account_applications
(
aaid bigint NOT NULL AUTO_INCREMENT,
account_id bigint NOT NULL,
application_id integer not null,
PRIMARY KEY (aaid)
);

insert into account_applications (account_id, application_id) values (1, 1);
insert into account_applications (account_id, application_id) values (1, 2);
insert into account_applications (account_id, application_id) values (1, 3);
insert into account_applications (account_id, application_id) values (2, 1);
insert into account_applications (account_id, application_id) values (2, 2);
insert into account_applications (account_id, application_id) values (3, 3);