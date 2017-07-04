drop table if exists class_properties;

create table class_properties
(
cpid bigint NOT NULL AUTO_INCREMENT,
tablename varchar(255) not null,
propertyname varchar(255) not null,
propertytype varchar(100) not null,
maxlength integer null,
PRIMARY KEY (cpid)
);

