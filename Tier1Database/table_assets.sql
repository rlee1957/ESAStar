use esa;

drop table if exists assets;

create table assets
(
asset_id bigint NOT NULL AUTO_INCREMENT,
merchant_id bigint not null,
parent_id bigint null,
label varchar(255) not null,
value varchar(800) not null,
PRIMARY KEY(asset_id)
);

