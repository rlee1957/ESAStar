use esa;

drop table if exists tasks;

create table tasks
(
task_id bigint NOT NULL AUTO_INCREMENT,
task_type_id integer not null,
task_name varchar(255) not null,
task_description varchar(255) null,
PRIMARY KEY(task_id)
);

insert into tasks (task_type_id, task_name, task_description) values (1, 'check-in', 'check in');
insert into tasks (task_type_id, task_name, task_description) values (1, 'enable open door', 'enable door opener');
insert into tasks (task_type_id, task_name, task_description) values (1, 'open door', 'open door to room');
insert into tasks (task_type_id, task_name, task_description) values (1, 'enable room service', 'enable room service');
insert into tasks (task_type_id, task_name, task_description) values (1, 'enable check out', 'enable check out');
insert into tasks (task_type_id, task_name, task_description) values (1, 'prompt for feedback', 'prompt user for feedback');