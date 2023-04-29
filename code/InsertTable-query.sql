INSERT INTO Book
VALUES
('B00001', 'MATLAB For Engineers', 'P00001', 227, '14 Jan 2017', 'Holly Moore', 45, 5),
('B00002', 'Computer Vision: Principles, Algorithms, Application, Learning', 'P00002', 386, '15 Nov 2017', 'E.R. Davies', 45, 5), 
('B00003', 'Dessert: A Tale of Happy Endings', 'P00003', 155, '13 Aug 2018', 'Jeri Quinzio', 46, 4),
('B00004', 'Predicting Cyberbullying', 'P00002', 438, '24 Apr 2019', 'Christopher Paul Barett',48,2),
('B00005', 'Be well, learn well: improve your wellbeing and academic performance', 'P00004', 122, '29 Aug 2020', 'Gareth Hughes', 41, 9)

INSERT INTO Member
VALUES
('M00001', 'Edward', '001008145503', '+601181646969', 'edward123@gmail.com', '8, Jalan Pereas 8/5, Bandar Baru Permas Jaya, 81750 Masai, Johor'),
('M00002', 'Bella', '9990608060206', '+60175132415', 'bellaiShere@gmail.com', '15, Jalan Intan 1/9, Tasan Puchong Intan, 47100 Puchong, Selangor'), 
('M00003', 'Elena', '981124145608', '+60185222783', 'elena1124@yahoo.com', '34, Jalan SelaMa, Taman Continental, 11600 George Town, Pulau Pinang'),
('M00004', 'Justin', '020818040605', '+60126653826', 'justin02@hotmail.com', '6, Jalan Kemacahaya 3, Taman kemacahaya, 43200, Cheras, Selangor'),
('M00005', 'Monica', '010123140454', '+60174022898', 'cutemonica@gmail.com', '2372, Jalan E 5/14, Taman Ehsan, 52100, Kuala Lumpur, Selangor')

INSERT INTO Publisher
VALUES
('P00001','Pearson'),
('P00002','Academic Press'),
('P00003','Reaktion Books Ltd'),
('P00004','Red Globe Press'),
('P00005','Barron''s Educational Series')

INSERT INTO PublisherBooks
VALUES
('9781292231204', 'P00001', 'MATLAB For Engineers', 'Holly Moore'),
('9780128092842', 'P00002", 'Computer Vision: Principles, Algorithms, Application, Learning', 'E.R. Davies'), 
('9781780239835', 'P00003', 'Dessert: A Tale of Happy Endings', 'Jeri Quinzio'),
('9780128166536', 'P00002', 'Predicting Cyberbullying', 'Christopher Paul Barlett'),
('9781352010688', 'P00004', 'Be well, learn well: improve your wellbeing and academic performance, 'Gareth Hughes'),
('9780764112737', 'P00005', 'Accounting', 'Peter J. Eisen')

INSERT INTO Rating
VALUES
('R00001','M00001','B00001',7,'Good book!'), 
('R00002','M00001','B00002',9,'Perfect book with examples.'),
('R00003','M00001','B00003',5,NULL),
('R00004','M00002','B00002',6,NULL),
('R00005','M00003','B00005',9,'Recommended')

INSERT INTO SalesOrder
VALUES
('O00001','1 May 2020','M00001','Credit Card',1460.,'Complete'),
('O00002','9 June 2020','M00002','Credit Card',2034,'Complete'),
('O00003','5 September 2020','M00003','Online Banking',1064,'Complete'),
('O00004','9 September 2020','M00004','Online Banking',874,'Incomplete'),
('O00005','20 September 2020','M00005','Debit Card',227,'Incomplete');

INSERT INTO SalesOrderDetails
VALUES
('SO00001','O00001','B00001',2,454),
('SO00002','O00001','B00002',1,386),
('SO00003','O00001','B00003',4,620),
('SO00004','O00002','B00002',3,1158),
('SO00005','O00002','B00004',2,876),
('SO00006','O00003','B00001',2,454),
('SO00007','O00003','B00005',5,610),
('SO00008','O00004','B00002',1,386),
('SO00009','O00004','B00005',4,488),
('SO00010','O00005','B00001',1,227)

INSERT INTO ShoppingCart
VALUES
('C00001', 'M00001', 'B00004', 3,1314,2086),
('C00002', 'М00003', 'B00003', 2,310,310),
('C00003', 'M00002', 'B00001', 1,227,227),
('C00004', 'M00005', 'B00005', 1,122,122),
('C00005', 'M00001', 'B00002', 2,772,2086),
('C00006', 'M00004', 'B00004', 1,438,438)

INSERT INTO SupplyOrder
VALUES
('S00001', '2 Dec 2019', 'P00001'),
('S00002', '6 Jan 2020', 'P00002'),
('S00003', '18 Apr 2020', 'P00003'),
('S00004', '21 Apr 2020', 'P00004'),
('S00005', '31 Aug 2020', 'P00002')

INSERT INTO SupplyOrderDetails
VALUES
('SPO0001', 'S00001', '9781292231204', 'B00001', 50),
('SP00002', 'S00002', '9780128092842', 'B00002', 50),
('SP00003', 'S00003', '9781780239835', 'B00003', 50),
('SP00004', 'S00004', '9780128166536', 'B00004', 50),
('SP00005', 'S00005', '9781352010688', 'B00005', 50)
