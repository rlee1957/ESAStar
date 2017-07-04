use esa;

drop table if exists merchant_rooms;

create table merchant_rooms
(
room_id bigint NOT NULL AUTO_INCREMENT,
merchant_id bigint not null,
type_id bigint not null,
room_name varchar(255) not null,
PRIMARY KEY(room_id)
);