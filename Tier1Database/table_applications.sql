use esa;

drop table if exists applications;

create table applications
(
application_id integer NOT NULL AUTO_INCREMENT,
application_name varchar(255) not null,
application_description varchar(1000) null,
date_created varchar(25) not null,
PRIMARY KEY (application_id)
);

insert into applications (application_name, application_description, date_created) values ('ESA Management', 'Esa application used to add new clients, analyze data and maintain data.', '2017-04-26');
insert into applications (application_name, application_description, date_created) values ('Personal ESA Mobile App', 'Esa mobile application available to the general population for free.', '2017-04-26');