CREATE TABLE Book(
  BookID nvarchar(20) PRIMARY KEY,
  BookTitle nvarchar(100),
  PublisherID nvarchar(20) FOREIGN KEY REFERENCES Publisher(PublisherID),
  Price decimal(10,2),
  PublishedDate date, 
  Author nvarchar(50),
  Quantity int,
  TotalSold int,
  );
 
CREATE TABLE Member(
  MemberID nvarchar(20) PRIMARY KEY,
  MemberName nvarchar(50).
  IC nvarchar(20),
  ContactNumber nvarchar(20), 
  Email nvarchar(100),
  Address nvarchar(500),
  );
  
CREATE TABLE Publisher(
  PublisherID nvarchar(20) PRIMARY KEY,
  PublisherName nvarchar(50),
  );
  
CREATE TABLE PublisherBooks(
  ISBN nvarchar(50) PRIMARY KEY
  PublisherID nvarchar(20) FOREIGN KEY REFERENCES Publisher(PublisherID),
  BookTitle nvarchar(100),
  Author nvarchar(50),
  );
  
CREATE TABLE Rating( 
  RatingID nvarchar(20) PRIMARY KEY,
  MemberID nvarchar(20) FOREIGN KEY REFERENCES Member(Member ID), 
  BookID nvarchar(20) FOREIGN KEY REFERENCES Book(BookID), 
  Rating int,
  Comment nvarchar(1000),
  );

CREATE TABLE SalesOrder(
  OrderID nvarchar(20) PRIMARY KEY,
  OrderDate date,
  MemberID nvarchar(20) FOREIGN KEY REFERENCES Member(MemberID), 
  PaymentMethod nvarchar(20), 
  TotalAmount decimal(10,2), 
  DeliveryStatus nvarchar(50),
  );

CREATE TABLE SalesOrderDetails( 
  SOrderID nvarchar(20) PRIMARY KEY, 
  OrderID nvarchar(20) FOREIGN KEY REFERENCES SalesOrder(OrderID), 
  BookID nvarchar(20) FOREIGN KEY REFERENCES Book(BookID), 
  OrderQuantity int,
  Amount decimal(10,2), 
  );

CREATE TABLE ShoppingCart(
  CartID nvarchar(20) PRIMARY KEY, 
  MemberID nvarchar(20) FOREIGN KEY REFERENCES Member(MemberID),
  BookID nvarchar(20) FOREIGN KEY REFERENCES Book(BookID), 
  CartQuantity int, 
  CartAmount decimal(10,2), 
  CartTotalAmount decimal(10,2), 
  );

CREATE TABLE SupplyOrder(
  POrderID nvarchar(20) PRIMARY KEY,
  POrderDate date, 
  PublisherID nvarchar(20) FOREIGN KEY REFERENCES Publisher(PublisherID),
  );

CREATE TABLE SupplyOrderDetails( 
  SPOrderID nvarchar(20) PRIMARY KEY, 
  POrderID nvarchar(20) FOREIGN KEY REFERENCES SupplyOrder(POrderID), 
  ISBN nvarchar(50) FOREIGN KEY REFERENCES PublisherBooks(ISBN), 
  BookID nvarchar(20) FOREIGN KEY REFERENCES Book(BookID), 
  Quantity int,
  );
