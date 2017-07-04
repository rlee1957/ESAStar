use esa;

drop table if exists mr_defaults;

create table mr_defaults
(
merchant_id bigint not null,
type_id bigint not null,
item_id bigint not null,
quantity integer not null
);