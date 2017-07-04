drop table if exists role;

create table role
(
role_id bigint NOT NULL AUTO_INCREMENT,
role_name varchar(255) not null,
role_description varchar(1000) not null,
PRIMARY KEY(role_id)
);

insert into role (role_name, role_description) values ('System Administrator', 'Full permissions everywhere');
insert into role (role_name, role_description) values ('Administrator', 'Full permissions within specified software');
insert into role (role_name, role_description) values ('Guest', 'Browse permissions within specified software');