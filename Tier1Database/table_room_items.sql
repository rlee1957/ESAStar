use esa;

drop table if exists room_items;

create table room_items
(
item_id bigint NOT NULL AUTO_INCREMENT,
item_class_id bigint not null,
item_description varchar(255) not null,
image_file varchar(500) not null,
PRIMARY KEY(item_id)
);