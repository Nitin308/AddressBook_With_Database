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
values ('Nitin','Sharma','Prakashcity','Kashipur','Uttarakhand',244713,8475596258,'ns@gmail.com'),
('Suraj','Sharma','Kashipur','Kashipur','Uttarakhand',244713,8545562355,'suraj@gmail.com');

---UC_4 Edit the existing contact
update AddressBookTable set Zip = 985625 where First_name = 'Akanksha';
select * from AddressBookTable;

---UC_5 Delete person from table
delete from AddressBookTable where First_name = 'Akanksha';
select * from AddressBookTable;

----UC_6 Retrieve data using City name
insert into AddressBookTable
values ('Abhilash','Meher','sundergarth','Bhuvneswar','Odisha',845623,84512845554,'abhilash@gmail.com'),
('Ronit','Patel','Ahemdabad','Ahemdabad','Gujarat',8645865,84512846565,'ronit@gmail.com');
insert into AddressBookTable
values ('Nitin','Sharma','Kashipur','Kashipur','Uttarakhand',244713,87452584512,'nitin@gmail.com');
select * from AddressBookTable where city = 'Kashipur';
select * from AddressBookTable where state = 'Uttarakhand';