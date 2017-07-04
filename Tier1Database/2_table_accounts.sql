drop table if exists account;

create table account
(
account_id bigint NOT NULL AUTO_INCREMENT,
user_name varchar(255) not null,
password text not null,
pin text null,
duress_phrase text null,
question1 text null,
answer1 text null,
question2 text null,
answer2 text null,
question3 text null,
answer3 text null,
birth_date varchar(25) null,
person_id bigint null,
parent_account_id bigint null,
voucher_account_id bigint null,
date_created varchar(25) not null,
PRIMARY KEY (account_id)
);

insert into account (user_name, password, pin, duress_phrase, question1, answer1, question2, answer2, question3, answer3, birth_date, person_id, parent_account_id, voucher_account_id,date_created) values (
'prophet', 
AES_ENCRYPT('#1InTheWorld', AES_ENCRYPT('prophet', UNHEX(SHA2('Master Application Administrator 2017-07-04', 512)))), 
AES_ENCRYPT('1273', AES_ENCRYPT('prophet', UNHEX(SHA2('Master Application Administrator 2017-07-04', 512)))), 
AES_ENCRYPT('Repent', AES_ENCRYPT('prophet', UNHEX(SHA2('Master Application Administrator 2017-07-04', 512)))), 
AES_ENCRYPT('What is your favorite color?', AES_ENCRYPT('prophet', UNHEX(SHA2('Master Application Administrator 2017-07-04', 512)))), 
AES_ENCRYPT('transparent', AES_ENCRYPT('prophet', UNHEX(SHA2('Master Application Administrator 2017-07-04', 512)))), 
AES_ENCRYPT('Who is your favorite person?', AES_ENCRYPT('prophet', UNHEX(SHA2('Master Application Administrator 2017-07-04', 512)))), 
AES_ENCRYPT('God the Father', AES_ENCRYPT('prophet', UNHEX(SHA2('Master Application Administrator 2017-07-04', 512)))), 
AES_ENCRYPT('What is your favorite desert?', AES_ENCRYPT('prophet', UNHEX(SHA2('Master Application Administrator 2017-07-04', 512)))), 
AES_ENCRYPT('mannah', AES_ENCRYPT('prophet', UNHEX(SHA2('Master Application Administrator 2017-07-04', 512)))), 
'1917-04-06', 
1, 
NULL, 
NULL,
'2017-06-30');

insert into account (user_name, password, pin, duress_phrase, question1, answer1, question2, answer2, question3, answer3, birth_date, person_id, parent_account_id, voucher_account_id,date_created) values (
'rlee1957', 
AES_ENCRYPT('Jaime1988', AES_ENCRYPT('rlee1957', UNHEX(SHA2('Russell Bert Lee 1957-07-08', 512)))), 
AES_ENCRYPT('5607', AES_ENCRYPT('rlee1957', UNHEX(SHA2('Russell Bert Lee 1957-07-08', 512)))), 
AES_ENCRYPT('My Mom is sick', AES_ENCRYPT('rlee1957', UNHEX(SHA2('Russell Bert Lee 1957-07-08', 512)))), 
AES_ENCRYPT('What is your favorite color?', AES_ENCRYPT('rlee1957', UNHEX(SHA2('Russell Bert Lee 1957-07-08', 512)))), 
AES_ENCRYPT('yellow', AES_ENCRYPT('rlee1957', UNHEX(SHA2('Russell Bert Lee 1957-07-08', 512)))), 
AES_ENCRYPT('Who is your favorite person?', AES_ENCRYPT('rlee1957', UNHEX(SHA2('Russell Bert Lee 1957-07-08', 512)))), 
AES_ENCRYPT('Jesus Christ', AES_ENCRYPT('rlee1957', UNHEX(SHA2('Russell Bert Lee 1957-07-08', 512)))), 
AES_ENCRYPT('What is your favorite desert?', AES_ENCRYPT('rlee1957', UNHEX(SHA2('Russell Bert Lee 1957-07-08', 512)))), 
AES_ENCRYPT('cherry pie', AES_ENCRYPT('rlee1957', UNHEX(SHA2('Russell Bert Lee 1957-07-08', 512)))), 
'1957-07-08',
2,
NULL, 
1, 
'2017-06-30');