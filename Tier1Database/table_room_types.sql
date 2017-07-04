use esa;

drop table if exists room_types;

create table room_types
(
type_id bigint NOT NULL AUTO_INCREMENT,
room_type varchar(255) not null,
collection varchar(255) not null,
image_file varchar(500) not null,
PRIMARY KEY(type_id)
);