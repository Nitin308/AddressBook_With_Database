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
values ('Ntin','Sharma','Prakashcity','Kashipur','Uttarakhand',244713,86302598745,'ns@gmail.com'),
('Rohit','Kumar','Bazpur','Bazpur','Uttarakhand',244713,7452136987,'rohit@gmail.com');

---UC_4 Edit the existing contact
update AddressBookTable set Zip = 244713 where First_name = 'rohit';
select * from AddressBookTable;

---UC_5 Delete person from table
delete from AddressBookTable where First_name = 'Rohit';



----UC_6 Retrieve data using City name
insert into AddressBookTable
values ('Abhilash','Meher','sundergarth','Bhuvneswar','Odisha',845623,84512845554,'abhilash@gmail.com'),
('Ronit','Patel','Ahemdabad','Ahemdabad','Gujarat',8645865,84512846565,'ronit@gmail.com');
insert into AddressBookTable
values ('Rohit','Kumar','Bazpur','Bazpur','Uttarakhand',244713,7452136987,'rohit@gmail.com');
select * from AddressBookTable where city = 'Bazpur';
select * from AddressBookTable where state = 'Uttarakhand';

---UC_7 the size of address book by City and State
select count(city) as Number_of_City from AddressBookTable ;
select count(State) as Number_of_States from AddressBookTable ;
select City,count(First_name) as TotalPersons from AddressBookTable group by City;
select State,count(First_name) as TotalPersons from AddressBookTable group by State;