use esa;

drop table if exists task_types;

create table task_types
(
tt_id integer NOT NULL AUTO_INCREMENT,
task_type varchar(255),
tt_description varchar(1000),
PRIMARY KEY(tt_id)
);

insert into task_types (task_type, tt_description) values ('automated', 'no human intervention');
insert into task_types (task_type, tt_description) values ('user task', 'user performs task');
insert into task_types (task_type, tt_description) values ('merchant task', 'merchant performs task');


