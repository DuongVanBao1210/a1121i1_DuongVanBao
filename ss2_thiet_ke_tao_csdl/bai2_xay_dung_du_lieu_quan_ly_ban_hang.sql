create database quan_ly_ban_hang;
use quan_ly_ban_hang;
create table customer(
cID int auto_increment primary key,
cName varchar(50),
cAge varchar(50)
);
create table `order`(
oID int auto_increment primary key,
cID int,
oDate date,
oTotalPrice int,
foreign key(cID) references customer(cID)
);
create table product(
pID int auto_increment primary key,
pName varchar(50),
pPrice int
);
create table order_detail(
oID int,
pID int,
odQTY varchar(50),
primary key(oID,pID),
foreign key(oID) references `order`(oID),
foreign key(pID) references product(pID)
);
