use esa;

drop table if exists mr_items;

create table mr_items
(
merchant_id bigint not null,
room_id bigint not null,
item_id bigint not null,
quantity integer not null
);