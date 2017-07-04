drop table if exists people;

create table people
(
people_id bigint NOT NULL AUTO_INCREMENT,
full_name varchar(1000) not null,
date_created varchar(25) not null,
birth_date varchar(25) null,
PRIMARY KEY(people_id)
);

insert into people (full_name, birth_date, date_created) values ('Master Application Administrator', '1917-04-06', '2017-05-30 22:15:00');
insert into people (full_name, birth_date, date_created) values ('Russell Bert Lee', '1957-07-08', '2017-05-30 22:15:00');

insert into class_properties (tablename, propertyname, propertytype, maxlength) values ('people', 'name_prefix', 'text', 100);
insert into class_properties (tablename, propertyname, propertytype, maxlength) values ('people', 'first_name', 'text', 250);
insert into class_properties (tablename, propertyname, propertytype, maxlength) values ('people', 'middle_name', 'text', 250);
insert into class_properties (tablename, propertyname, propertytype, maxlength) values ('people', 'last_name', 'text', 250);
insert into class_properties (tablename, propertyname, propertytype, maxlength) values ('people', 'name_suffix', 'text', 100);
insert into class_properties (tablename, propertyname, propertytype, maxlength) values ('people', 'nick_name', 'text', 255);
insert into class_properties (tablename, propertyname, propertytype, maxlength) values ('people', 'birth_date', 'date-text', 25);
insert into class_properties (tablename, propertyname, propertytype, maxlength) values ('people', 'preferred_name', 'text', 800);