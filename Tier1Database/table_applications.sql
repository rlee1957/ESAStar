drop table if exists applications;

create table applications
(
application_id integer NOT NULL AUTO_INCREMENT,
application_type varchar(255) not null,
application_name varchar(255) not null,
application_description varchar(1000) null,
merchant_id bigint NULL,
date_created varchar(25) not null,
PRIMARY KEY (application_id)
);

insert into applications (application_type, application_name, application_description, merchant_id, date_created) values ('ESA-Star Administration Application', 'ESA-Star Administration Application', 'Esa application used to manage, maintain and analyze data.', NULL, '2017-04-26');
insert into applications (application_type, application_name, application_description, merchant_id, date_created) values ('ESA-Star Mobile Application', 'ESA-Star Mobile Application', 'Esa mobile application available to the general population for free.', NULL, '2017-04-26');
insert into applications (application_type, application_name, application_description, merchant_id, date_created) values ('ESA-Star Test Suite', 'ESA-Star Test Suite', 'Esa-Star testing suite.', NULL, '2017-04-26');