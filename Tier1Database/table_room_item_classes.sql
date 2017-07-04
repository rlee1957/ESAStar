use esa;

drop table if exists room_item_classes;

create table room_item_classes
(
class_id bigint NOT NULL AUTO_INCREMENT,
collection_class varchar(100) not null,
item_class varchar(100) not null,
image_file varchar(500) not null,
PRIMARY KEY(class_id)
);