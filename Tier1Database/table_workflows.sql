use esa;

drop table if exists workflows;

create table workflows
(
todo_id bigint NOT NULL AUTO_INCREMENT,
task_id bigint not null,
parent_id bigint null,
trigger_id bigint null,
PRIMARY KEY(todo_id)
);