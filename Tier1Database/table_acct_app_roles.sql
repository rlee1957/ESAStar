drop table if exists acct_app_roles;

create table acct_app_roles
(
aarid bigint NOT NULL AUTO_INCREMENT,
account_id bigint NOT NULL,
arid bigint not null,
approved_by bigint not NULL,
date_approved varchar(25) NULL,
PRIMARY KEY (aarid)
);

insert into acct_app_roles (account_id, arid, approved_by, date_approved) values (1, 1, 1, '2017-07-03');
insert into acct_app_roles (account_id, arid, approved_by, date_approved) values (2, 1, 1, '2017-07-03');