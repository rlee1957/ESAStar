drop table if exists table_properties;

create table table_properties
(
tpid bigint NOT NULL AUTO_INCREMENT,
cpid bigint not null,
cid_name varchar(100) not null,
cid bigint not null,
propertyvalue varchar(8000) null,
PRIMARY KEY (tpid)
);