drop table if exists application_roles;

create table application_roles
(
arid bigint NOT NULL AUTO_INCREMENT,
application_id bigint not null,
role_id bigint not null,
requires_approval tinyint not null,
PRIMARY KEY (arid)
);

insert into application_roles (application_id, role_id, requires_approval) values (1, 1, 1);
insert into application_roles (application_id, role_id, requires_approval) values (1, 2, 1);
insert into application_roles (application_id, role_id, requires_approval) values (1, 3, 0);
insert into application_roles (application_id, role_id, requires_approval) values (2, 1, 1);
insert into application_roles (application_id, role_id, requires_approval) values (2, 2, 1);
insert into application_roles (application_id, role_id, requires_approval) values (2, 3, 0);
insert into application_roles (application_id, role_id, requires_approval) values (3, 1, 1);
insert into application_roles (application_id, role_id, requires_approval) values (3, 2, 1);
insert into application_roles (application_id, role_id, requires_approval) values (3, 3, 0);