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
values ('Nitin','Sharma','Kashipur','Kashipur','Utarakhand',244713,7856498551,'ns@gmail.com'),
('Akanksha','Lanjewar','Nagpur','Nagpur','Maharastra',561235,87451284512,'akanksha@gmail.com');

---UC_4 Edit the existing contact
update AddressBookTable set Zip = 985625 where First_name = 'Akanksha';
select * from AddressBookTable;

---UC_5 Delete person from table
delete from AddressBookTable where First_name = 'Akanksha';

----UC_6 Retrieve data using City name
insert into AddressBookTable
values ('Abhilash','Meher','sundergarth','Bhuvneswar','Odisha',845623,84512845554,'abhilash@gmail.com'),
('Ronit','Patel','Ahemdabad','Ahemdabad','Gujarat',8645865,84512846565,'ronit@gmail.com');
insert into AddressBookTable
values ('Akanksha','Lanjewar','Nagpur','Nagpur','Maharastra',561235,87451284512,'akanksha@gmail.com');
select * from AddressBookTable where city = 'Jamnagar';
select * from AddressBookTable where state = 'Gujarat';

---UC_7 the size of address book by City and State
select count(city) as Number_of_City from AddressBookTable ;
select count(State) as Number_of_States from AddressBookTable ;
select City,count(First_name) as TotalPersons from AddressBookTable group by City;
select State,count(First_name) as TotalPersons from AddressBookTable group by State;

---UC_8 retrieve entries sorted alphabetically by Person’s name for a given city
insert into AddressBookTable
values ('Lisan','Kadivar','Jamjodhpur','Jamnagar','Gujarat',360530,98461532455,'lisan@gmail.com'),
('Brich','Dharsandia','Morbi','Morbi','Gujarat',845185,8745184585,'brich@gmail.com'),
('Princy','Chhatrala','Junagadh','Junagadh','Gujarat',845896,9864518745,'princy@gmail.com');
select * from AddressBookTable;
select * from AddressBookTable where City = 'Jamnagar' order by First_name;