create table m_GPA(
id int,
name varchar(255),
dept varchar(255),
Address varchar(255),
 City varchar(255)
)
select * from m_GPA

insert into m_GPA
values(1,'M','CMT','UK','USA'),
(2,'N','CST','US','USA'),
(3,'S','CMT','UD','LONDON')
go
create procedure StoreStudent
AS
set nocount on;
select name,dept from m_GPA
where City='usa'

exec StoreStudent

drop procedure StoreStudent