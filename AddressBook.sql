---UC_1 Create a Address Book Service DB
create database AddressBookService;
use AddressBookService;

---UC_2 create a AddressBook Table
create table AddressBookTable(
First_name varchar(255),
Last_name varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
Zip int,
Phone_number bigint,
Email varchar(255));

---UC_3 Insert Data In Table
insert into AddressBookTable
values ('Nitin','Sharma','Kashipur','Kashipur','Uttarakhand',244713,8856447595,'ns@gmail.com'),
('Suraj','Kumar','Bazpur','Bazpur','Uttarakhand',244713,87854784512,'suraj@gmail.com');

---UC_4 Edit the existing contact
update AddressBookTable set Zip = 985625 where First_name = 'Suraj';
select * from AddressBookTable;

---UC_5 Delete person from table
delete from AddressBookTable where First_name = 'Suraj';
select * from AddressBookTable;
