CREATE TABLE CAR(
RegistrationNum nvarchar(8) PRIMARY KEY,
Make nvarchar(20),
Model nvarchar(20),
YearOfManufacture date,
);

CREATE TABLE CUSTOMER(
CustCode nvarchar(4) PRIMARY KEY,
CustName nvarchar(50),
Location nvarchar(50),
);

CREATE TABLE RENTAL(
RecID int PRIMARY KEY,
RegistrationNum nvarchar(8) FOREIGN KEY REFERENCES CAR(RegistrationNum),
CustCode nvarchar(4) FOREIGN KEY REFERENCES CUSTOMER(CustCode),
MilesDriven int,
DateHired date,
);

