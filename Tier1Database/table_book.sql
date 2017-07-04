use esa;

drop table if exists book;

create table book
(
book_number integer NOT NULL AUTO_INCREMENT,
book_id varchar(255) not null,
full_name varchar(255) not null,
email varchar(400) not null,
phone varchar(25) not null,
book_date varchar(25)not null,
occupants integer not null,
arrival_date varchar(255) not null,
PRIMARY KEY(book_number)
);

insert into book (book_id, full_name, email, phone, book_date, occupants, arrival_date) values ('RussellBLee1957-1', 'Russell B Lee', 'rlee.sn@gmail.com', '2089959553', '2017-04-26', 1, '2017-07-08');