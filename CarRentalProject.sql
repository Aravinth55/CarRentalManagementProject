CREATE TABLE CustomerRegistration(
Customer_Id INT PRIMARY KEY,
Customer_Name varchar2(50) Not Null,
Customer_Password VARCHAR2(20) UNIQUE not null,
Address varchar2(100) Not Null,
Mobile_No NUMBER(10) Not Null,
Gender VARCHAR2(200) Not Null,
Blood_Group VARCHAR2(200) Not Null,
Person_Type VARCHAR2(200) Not Null,
Joining_Date Date Not Null
);
create sequence Customer_Id start with 1 increment by 1;

insert into CustomerRegistration values(1,'Aravinth','arav314','20/w/5 Natham',9080163538,'Male','B positive','Owner','28/07/2022');
insert into CustomerRegistration values(2,'Praveen','pravee3122','15/s/56 Chennai',7867994577,'Male','A positive','Customer','20/07/2022');
insert into CustomerRegistration values(3,'Suriya','suri3010','15/s/56 Theni',7867994577,'Male','AB positive','Customer','20/07/2022');
 insert into CustomerRegistration values(4,'Stokes','stok3333','11/swest/12 Theni',7654345678,'Male','A positive','Customer','12/08/2022');
insert into CustomerRegistration values(5,'Sky','sky4000','01/north/90 Dindigul',9898988776,'Male','A positive','Customer','15/09/2022');
insert into CustomerRegistration values(6,'Warne','war3131','152/east/76 Trichy',7867955555,'Male','B positive','Customer','30/11/2022');

Select * from CustomerRegistration;
commit;
drop table CustomerRegistration;

CREATE TABLE CarRegistration(
CarRegNo VARCHAR2(10) PRIMARY KEY,
OwnerId INT Not Null,
CarMake VARCHAR2(100) not Null,
CarModel VARCHAR2(200) Not Null,
CarColour VARCHAR2(200) Not Null,
FuelType VARCHAR2(100) Not Null,
CarCapacity INT Not Null,
CarAvailable VARCHAR2(200) Not Null
);

desc CarRegistration; 
insert into carregistration values('TN57AS1234',10,'BMW','BMW X1','Black','Petrol',4,'Available');
insert into carregistration values('TN58BV1235',11,'AUDI','AUDI Z3','Red','Diesel',2,'Not Available');
insert into carregistration values('TN57AC1434',12,'MAHINDRA','CR800','Blue','Petrol',5,'Available');
insert into carregistration values('TN57AB1112',13,'HUNDAI','RENO','White','Diesel',6,'Not Available');
insert into carregistration values('TN58AW5674',14,'RENO','RENO X6','Green','Diesel',5,'Available');
insert into carregistration values('TN57AQ9800',15,'MINICUPPER','MINI78','White','Petrol',2,'Not Available');
insert into carregistration values('TN58AZ7777',16,'HUNDAI','Rexno12','White','Diesel',4,'Available');

SELECT * FROM carregistration;
COMMIT;

CREATE TABLE CarRental(
CARREGNO VARCHAR2(10) CONSTRAINT FK_Car_Reg_No REFERENCES CarRegistration(CarRegNo) ON DELETE CASCADE,
CUSTOMERID INT Not Null CONSTRAINT FK_Customer_Id REFERENCES CustomerRegistration(Customer_Id) ON DELETE CASCADE,
FROMDATE Date Not Null,
DUEDATE Date Not Null,
RETAILFEE NUMBER(10) Not Null,
FUELLEVEL VARCHAR2(200) Not Null,
WORKINGCONDITION VARCHAR2(100) Not Null,
PRIMARY KEY (CARREGNO, CUSTOMERID)
 );
 
 insert into carrental values('TN58BV1235',1,'25/07/2022','30/07/2022',5000,'Full','Good');
insert into carrental values('TN57AB1112',2,'20/06/2022','22/06/2022',2000,'Medium','Average');
 insert into carrental values('TN57AB1112',3,'20/06/2022','22/06/2022',2000,'Medium','Average');
 insert into carrental values('TN57AB1112',4,'02/06/2022','05/06/2022',3000,'Full','Average');

 select * from carrental;
 commit;
 
 CREATE TABLE ReturnCar(
CARREGNO VARCHAR2(10) Not Null CONSTRAINT FK_CarRegNo REFERENCES CarRegistration(CarRegNo) ON DELETE CASCADE,
CUSTOMERID INT Not Null CONSTRAINT FK_CustomerId REFERENCES CustomerRegistration(Customer_Id) ON DELETE CASCADE,
FROMDATE Date Not Null,
DUEDATE Date Not Null,
PAYELAPSED INT Not Null,
CARFINE INT Not Null,
TOTALFEE INT Not Null,
PRIMARY KEY (CARREGNO, CUSTOMERID)
);
insert into returncar values('TN57AB1112',1,'25/07/2022','31/07/2022',1,1000,6000);
insert into returncar values('TN57AS1234',2,'25/07/2022','27/07/2022',1,1000,3000);
insert into returncar values('TN58BV1235',2,'20/07/2022','27/07/2022',1,1000,8000);
insert into returncar values('TN58BV1235',3,'20/07/2022','27/07/2022',1,1000,8000);

select * from returncar;
commit;

CREATE TABLE CompanyAdmin(
USERID INT primary key Not Null,
USERNAME VARCHAR2(100)not null,
USERPASSWORD VARCHAR2(30) not null
);
create sequence USERID start with 1 increment by 1;
commit;
SELECT * FROM companyadmin;
insert into companyadmin values(123,'Root','root55');
insert into companyadmin values(124,'Smith','smi098');
SELECT * FROM CarRegistration;
commit;


