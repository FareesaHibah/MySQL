create database data_encryption;
use data_encryption;

create table payment (
Payment_ID int primary key,
name varchar(50),
Credit_card varbinary(100)
);

set @key = "1234";

insert into payment (Payment_ID,name,Credit_card)
values (1,"Fareesa",aes_encrypt('8008758678', @key));

set @key = "1234";

select Payment_ID,name,aes_decrypt(Credit_card,@key) as decrypted_value
from payment where name = "Fareesa"; 




create table hashpassword (

ID int primary key,
name varchar(100),
password char (100)
);

-- insert data into table using hash password

set @name = 'Ayesha';
set @password = '4321';

insert into hashpassword (ID,name,password)
values (3,@name,sha2(@password,256));

set @name = 'Ayesha';
set @password = '4321';

select ID,name,password from hashpassword 
where name = @name and password = sha2(@password,256);

select sha2('fareesa',224) as hashpaswrd;
select sha2('abcd',348);
select hex('fareesa');
select unhex('65672171809871312');
