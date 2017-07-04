use esa;

drop table if exists available_services;

create table available_services
(
account_id bigint not null,
application_id bigint not null,
service_id bigint not null
);


