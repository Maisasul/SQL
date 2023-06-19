/*CREATE DATABASE Airport;*/
Create table Airlines(
Aname varchar(60) primary key,
contactNumber int not null,
Email varchar(60) not null,
representName varchar(60) not null
);
Create table Terminal(
tid int primary key identity(1,1),
capicity varchar(60) not null,
tNAme varchar(60) not null,
Tlocation varchar(60) not null
);
Create table Officier(
OID int primary key identity(1,1),
firstName varchar(60) not null,
lastName varchar(60) not null,
position varchar(60) not null,
email varchar(80) not null,
phoneNO char(60) not null,
teID int foreign key references Terminal(tid)
);
Create table gates(
gID int primary key identity(1,1),
availabilityStatus varchar(60) not null,
teID int foreign key references Terminal(tid)
);
Create table Flights(
id int primary key identity(1,1),
gateNumber int not null,
flightStatus varchar(30) not null,
destinationCity varchar(60) not null,
departureCity varchar(60) not null,
departureTime date not null,
arrivalTime date not null,
geID int foreign key references gates(gID),
arID varchar(60) foreign key references Airlines(Aname)
);
Create table Passengers(
passportNumber int primary key identity(1,1),
firstName varchar(60) not null,
lastName varchar(60) not null,
gender char(60) not null,
email varchar(80) not null,
DOB date not null,
nationality char(60) not null,
Phone char(60) not null,
airlineID varchar(60) foreign key references Airlines(Aname),
flightID int foreign key references Flights(id),
terminalID int foreign key references Terminal(tid)
);
create table Baggage(
baggageID int primary key identity(1,1),
bweight int not null,
trackingNum int not null,
passportNum int foreign key references Passengers(passportNumber)
);


