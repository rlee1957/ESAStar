use esa;

drop table if exists account_history;

create table request_history
(
account_id bigint not null,
application_id bigint not null,
request_id bigint not null,
service_id bigint not null,
started varchar(25) not null
);



