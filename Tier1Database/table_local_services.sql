use esa;

drop table if exists local_services;
			  
create table local_services 
(
local_service_id bigint NOT NULL,
merchant_id bigint not null,
parent_id bigint NULL,
node_name varchar(255) not null,
node_value varchar(1000) null,
position integer null,
workflow_id bigint not null,
PRIMARY KEY(local_service_id)
);