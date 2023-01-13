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
values ('Nitin','Sharma','Prakashcity','Kashipur','Uttarakhand',244713,8630289508,'ns@gmail.com'),
('Sweta','Sharma','Kashipur','Kashipur','Uttarakhand',561235,87451284512,'sweta@gmail.com');

---UC_4 Edit the existing contact
update AddressBookTable set Zip = 985625 where First_name = 'Nitin';
select * from AddressBookTable;