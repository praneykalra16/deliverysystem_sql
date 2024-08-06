REM   Script: Session 04
REM   all

create table customer( 
C_id varchar(20) NOT NULL, 
First_name varchar(20), 
Last_name varchar(20), 
C_address varchar(30), 
C_phno number(10), 
C_emailid varchar(30), 
primary key(C_id) 
);

create table Restaurant( 
R_id varchar(20) NOT NULL primary key, 
R_name varchar(20), 
R_address varchar(30), 
Rating number(1), 
UPI_AccNo varchar(20), 
Chat varchar(30), 
Helpline number(10), 
C_id varchar(20) references customer(C_id) 
);

create table Payment( 
P_id varchar(20) not null primary key, 
Total_amount number(10), 
C_id varchar(20) references customer(C_id) 
);

create table Delivery_Partner( 
D_id varchar(20) not null primary key, 
D_name varchar(30), 
D_phno number(10), 
Rating number(1), 
Experience varchar(10), 
Vaccination_status varchar(10), 
Delivery_Charge number(5), 
P_id varchar(20) references Payment(P_id) 
);

create table Order_info( 
Order_no varchar(20) not null primary key, 
order_date date, 
order_time date, 
Order_amount number(10), 
C_id varchar(20) references customer(C_id), 
D_id varchar(20) references Delivery_Partner(D_id), 
R_id varchar(20) references Restaurant(R_id) 
);

create table Veg( 
R_id varchar(20) references Restaurant(R_id), 
Veg_categories varchar(20) 
);

create table NonVeg( 
R_id varchar(20) references Restaurant(R_id), 
NonVeg_categories varchar(20) 
);

create table R_phno( 
R_id varchar(20) references Restaurant(R_id), 
PhoneNo number(10) 
);

create table Offers( 
R_id varchar(20) references Restaurant(R_id), 
Offers varchar(30) 
);

create table FAQs( 
R_id varchar(20) references Restaurant(R_id), 
FAQs varchar(40) 
    );

create table Issues( 
R_id varchar(20) references Restaurant(R_id), 
General_issues varchar(40) 
);

create table T_C( 
R_id varchar(20) references Restaurant(R_id), 
T_C varchar(40) 
    );

create table PickUp( 
R_id varchar(20) references Restaurant(R_id), 
D_id varchar(20) references Delivery_Partner(D_id) 
    );

create table OnlineMode( 
P_id varchar(20) references Payment(P_id), 
Credit_Debit number(1), 
UPI number(1), 
Wallet number(1), 
Netbanking number(1), 
Food_Card number(1) 
);

create table OfflineMode( 
P_id varchar(20) references Payment(P_id), 
CashOnDelivery number(1) 
    );

insert into customer values('A8373B','ARJUN','SINGLA','121 sector-3 
Pune',9621514217,'arjunsingla@gmail.com');

insert into customer values('T92881','AYUSH','MAHAJAN','72 Kenny Towers 
Bhopal',9214188000,'ayushmahajan01@gmail.com');

insert into customer values('H8290J','RIYA','MALHOTRA','Street No. 5 Model town 
Mumbai', 7415211511, 'riyamalhotra@outlook.com');

insert into customer values('JFOEO2','DEVANSHI','KALRA','521 Octave Towers 
Noida', 7611542165, 'kalra.devanshi@gmail.com');

insert into customer values('5HFJFI', 'ABHINAV','VERMA','23 sector-7 
Chandigarh',8211542116,'verma.abhinavO04 @yahoo.com');

insert into customer values('B4930N', 'VEDANT','MISHRA','S5 Chanderi Nagar 
Delhi',7611511100,'vedant111@gmail.com');

insert into customer values('A8373B','ARJUN','SINGLA','121 sector-3 
Pune',9621514217,'arjunsingla@gmail.com');

insert into customer values('T92881','AYUSH','MAHAJAN','72 Kenny Towers 
Bhopal',9214188000,'ayushmahajan01@gmail.com');

insert into customer values('H8290J','RIYA','MALHOTRA','Street No.5 Model town 
Mumbai', 7415211511, 'riyamalhotra@outlook.com');

insert into customer values('JFOEO2','DEVANSHI','KALRA','521 Octave Towers 
Noida', 7611542165, 'kalra.devanshi@gmail.com');

insert into customer values('5HFJFI', 'ABHINAV','VERMA','23 sector-7 
Chandigarh',8211542116,'verma.abhinavO04 @yahoo.com');

insert into customer values('B4930N', 'VEDANT','MISHRA','S5 Chanderi Nagar 
Delhi',7611511100,'vedant111@gmail.com');

select * from customer;

Alter TABLE Customer add city varchar(30);

Update Customer SET city='Pune' where C_id='A8373B';

Update Customer SET city= 'Bhopal' where C_id='T92881';

Update Customer SET city= 'Mumbai' where C_id='H8290J';

Update Customer SET city= 'Noida' where C_id='JFOEQ2';

Update Customer SET city= 'Chandigarh' where C_id='SHFJFI';

Update Customer SET city='Delhi' where C_id='B4930N';

Update Customer SET city= 'Noida' where C_id='JFOEO2';

Update Customer SET city= 'Chandigarh' where C_id='5HFJFI';

select * from customer;

insert into Payment values('th38392',540,'JFOEO2');

insert into Payment values('hfj595',1300,'B4930N');

insert into Payment values('lkd999',289,'5HFJFI');

insert into Payment values('mng167',476,'H8290J)');

insert into Payment values('bvnf44',720,'A8373B');

insert into Payment values('cfd320',1240,'T92881');

select * from customer;

insert into Payment values('mng167',476,'H8290J');

insert into Delivery_Partner values('l80291','Rajiv Kumar',9180278921,4,'10 
years','Vaccinated',50,'lkd999');

insert into Delivery Partner values('ksd891','Neeraj Singh',9982736472,5,'2 
years','Vaccinated',40,'cfd320');

insert into Delivery_Partner values('bbh347','Parminder Singh',7836472112,5,'3 
years','Vaccinated',0,'mng167');

insert into Delivery_Partner values('cbchd1','Pritam Sharma',8846752133,3,'1 
years','Vaccinated',20,'hfj595');

insert into Delivery_Partner values('nnjs1929','Arun Verma',9098771345,4,'4 
years','Vaccinated',25,'bvnf44');

insert into Delivery_Partner values('345ggh2','Divya Ghosla',7890192743,5,'6 
years','Vaccinated',47,'th38392');

insert into Delivery_Partner values('ksd891','Neeraj Singh',9982736472,5,'2 
years','Vaccinated',40,'cfd320');

insert into Order_info values('1558','07-feb- 
2022',to_date('11:20','hh24:mi'),'510','A8373B','l80291','A78191');

insert into Order_info values('486','09-feb- 
2022',to_date('14:30','hh24:mi'),'1260', 'T92881','ksd891','57382N');

insert into Order_info values('45821','04-mar- 
2022',to_date('16:05','hh24:mi'),'289','H8290J','bbh347','CNG738');

insert into Order_info values('784','07- 
march2022',to_date('10:12','hh24:mi'),'456','JFOEo2','cbchd1','TGH112');

insert into Order_info values('123','24-apr- 
2022',to_date('19:10','hh24:mi'),'695','5HFJEI','nnjs1929','UP34T1');

insert into Order_info values('741','20-may- 
2022',to_date('13:45','hh24:mi'),'1193','B4930N','345ggh2','YG8292');

insert into Restaurant values('A78191','Vatsa Food 
Factory','Pune',4,'sbin8372829','0',9890056732,'A8373B');

insert into Restaurant values('57382N','Cosmi','Bhopal',3,'pjb38292','0',9890056732,'T92881');

insert into Restaurant values('CNG738','Jaggi','Mumbai',3,'icici99202','Make the food a little 
spicy',9890056732,'H8290J');

insert into Restaurant values('TGH112','McDonalds','Noida',5,'axis12938','Extra 
ketchup',9890056732,'JFOEO2');

insert into Restaurant values('UP34T1','Subway','Chandigarh',5,'obc155877','0',9890056732,'5HFJFI');

insert into Restaurant values('YG8292','KFC','Delhi',4,'can728291','Extra 
cheese', 9890056732,'B4930N');

insert into Order_info values('1558','07-feb- 
2022',to_date('11:20','hh24:mi'),'510','A8373B','l80291','A78191');

insert into Order_info values('486','09-feb- 
2022',to_date('14:30','hh24:mi'),'1260', 'T92881','ksd891','57382N');

insert into Order_info values('45821','04-mar- 
2022',to_date('16:05','hh24:mi'),'289','H8290J','bbh347','CNG738');

insert into Order_info values('784','07- 
march2022',to_date('10:12','hh24:mi'),'456','JFOEo2','cbchd1','TGH112');

insert into Order_info values('123','24-apr- 
2022',to_date('19:10','hh24:mi'),'695','5HFJEI','nnjs1929','UP34T1');

insert into Order_info values('741','20-may- 
2022',to_date('13:45','hh24:mi'),'1193','B4930N','345ggh2','YG8292');

insert into Order_info values('784','07- 
march2022',to_date('10:12','hh24:mi'),'456','JFOEO2','cbchd1','TGH112');

insert into Order_info values('123','24-apr- 
2022',to_date('19:10','hh24:mi'),'695','5HFJFI','nnjs1929','UP34T1');

insert into Veg values('A78191','Paneer Pizza');

insert into Veg values('CNG738','Veg Biryani');

insert into Veg values('TGH112','French Fries');

insert into Veg values('57382N','Cake, IceCream');

insert into NonVeg values('TGH112','Maharaja Mac');

insert into NonVeg values('UP34T1','Chicken Teriyaki');

insert into NonVeg values('YG8292','Tandoori Burger');

Update Delivery_Partner SET D_name= 'Vansh Oberoi' where D_id='345ggh2';

insert into Restaurant values('GUJ855','KFC','Pune',4,'can82356','Barbeque Sauce',9890056732,'A8373B');

insert into Restaurant values('UYRW78','Havmor','Pune',3,'axs728287','0',9890056732,'A8373B');

insert into Restaurant values('MP34YT','Zero Degrees','Chandigarh',4,'shin12291','0',9890056732,'5HFJFI');

insert into Restaurant values('CH34H1','Vern Club','Chandigarh',4,'can585291','0',9890056732,'5HFJFI');

insert into Restaurant values('SER74T1','Food Masterz','Chandigarh',4,'icici72191','0',9890056732,'5HFJFI');

select * from customer;

begin 
dbms_output.put_line('Welcome to the PL/SQL part of the project'); 
end;
/

begin 
 
update customer set first_name='ram' where c_id='A8473B'; 
if sql%notfound then 
 
dbms_output.put_line('updation is not performed'); 
end if; 
end;
/

begin 
 
delete Order_info where Order_no='123'; 
 
n:=sql%rowcount; 
dbms_output.put_line('total numbers of records deleted ' | |n); 
 
end;
/

begin 
 
delete Order_info where Order_no='123'; 
 
n:=sql%rowcount; 
dbms_output.put_line('total numbers of records deleted ' ||n); 
 
end;
/

declare 
 
n number; 
begin 
 
delete Order_info where Order_no='123'; 
 
n:=sql%rowcount; 
dbms_output.put_line('total numbers of records deleted ' ||n); 
 
end;
/

declare 
 
n humber; 
begin 
 
delete Order_info where Order_no='123'; 
 
n:=sql%rowcount; 
dbms_output.put_line('total numbers of records deleted ' ||n); 
 
end;
/

declare 
n number; 
begin 
delete Order_info where Order_no='123'; 
n:=sql%rowcount; 
dbms_output.put_line('total numbers of records deleted ' ||n); 
end;
/

declare 
n number; 
begin 
delete Order_info where Order_no='1558'; 
n:=sql%rowcount; 
dbms_output.put_line('total numbers of records deleted ' ||n); 
end;
/

declare 
s number(5); 
begin 
select Total_amount into s from payment where P_id= 'hfj595'; 
dbms_output.put_line('total amount with payment idis'|| s); 
end;
/

declare 
s number(5); 
begin 
select Total_amount into s from payment where P_id= 'hfj595'; 
dbms_output.put_line('total amount with payment id is '|| s); 
end;
/

declare 
n customer.C_phno%type; 
m customer.C_emailid%type; 
cvarchar(10); 
begin 
c:='5HFJFI'; 
select C_phno,C_emailid into n,m from customer where C_id='c'; 
dbms_output.put_line('phone no is ' ||n); 
dbms_output.put_line('email id is ' ||m); 
exception 
when no_data_found then 
dbms_output.put_line('There is no record for C_id '||c); 
end;
/

declare 
n customer.C_phno%type; 
m customer.C_emailid%type; 
c varchar(10); 
begin 
c:='5HFJFI'; 
select C_phno,C_emailid into n,m from customer where C_id='c'; 
dbms_output.put_line('phone no is ' ||n); 
dbms_output.put_line('email id is ' ||m); 
exception 
when no_data_found then 
dbms_output.put_line('There is no record for C_id '||c); 
end;
/

declare 
large_value exception; 
pragma exception_init(large_value,-01438); 
begin 
insert into Payment values('sgy5767g',786267575735,'gsv56'); 
exception 
when large_value then 
dbms_output.put_line('value is large than range'); 
end;
/

declare 
own_handle exception; 
pragma exception_init(own_handle,-01438); 
begin 
insert into Payment values('tsgy1g',786267575735,'gsv56'); 
exception 
when own_handle then 
dbms_output.put_line('value is large than range usinf own handle'); 
end;
/

declare 
cursor cis select R_id,R_name,Rating from Restaurant ; 
i Restaurant.R_id%type; 
n Restaurant.R_name%type; 
a Restaurant.Rating%type; 
begin 
open c; 
loop 
fetch c into i,n,a; 
exit when c%NOTFOUND; 
dbms_output.put_line(i ||' '|| n||''|| a); 
end loop; 
close c; 
end;
/

declare 
cursor c is select R_id,R_name,Rating from Restaurant ; 
i Restaurant.R_id%type; 
n Restaurant.R_name%type; 
a Restaurant.Rating%type; 
begin 
open c; 
loop 
fetch c into i,n,a; 
exit when c%NOTFOUND; 
dbms_output.put_line(i ||' '|| n||''|| a); 
end loop; 
close c; 
end;
/

create or replace trigger customer_upper 
before insert or update of First_name,Last_name 
on customer 
for each row 
begin 
:new.First_name :=upper(:new.First_name); 
:new.Last_name :=upper(:new.Last_name); 
end;
/

create or replace trigger customer_upper 
before insert or update of First_name,Last_name 
on customer 
for each row 
begin 
:new.First_name :=upper(:new.First_name); 
:new.Last_name :=upper(:new.Last_name); 
end;
/

insert into customer values('Kh8373B', 'divyansh','SINGLA','127 sector-10 
Pune',9921514217,'dsingla@gmail.com');

create or replace trigger customer_upper 
before insert or update of First_name,Last_name 
on customer 
for each row 
begin 
:new.First_name :=upper(:new.First_name); 
:new.Last_name :=upper(:new.Last_name); 
end; 
insert into customer values('Kh8373B', 'divyansh','SINGLA','127 sector-10 
Pune',9921514217,'dsingla@gmail.com');
/

create or replace trigger customer_upper 
 
before insert or update of First_name,Last_name 
 
on customer 
for each row 
 
begin 
 
:new.First_name :=upper(:new.First_name); 
 
:new.Last_name :=upper(:new.Last_name); 
 
end; 
 
insert into customer values('Kh8373B', 'divyansh','SINGLA','127 sector-10 
Pune', 9921514217,'dsingla@gmail.com'); 
 
update customer set First_name='Rajvinder',Last_name='Singh' where c_id='Kh8373B'; 
 
select * from customer;
/

insert into customer values('Kh8373B', 'divyansh','SINGLA','127 sector-10 
-- Pune', 9921514217,'dsingla@gmail.com');

