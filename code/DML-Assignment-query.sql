--i List the book(s) which has the highest rating. Show book id, book name, and the rating

SELECT Book.BookID, BookTitle, AVG(Rating) AS AverageRating FROM Rating
INNER JOIN Book ON Rating.BookID = Book.BookID
GROUP BY Book.BookID,BookTitle
HAVING AVG(Rating) = 
(SELECT MAX(average) FROM 
(SELECT BookID, AVG(Rating) AS average FROM Rating 
GROUP BY BookID)
AS HighestRating);


--ii Find the total number of feedbacks per member. Show member id, member name, and total number of feedbacks per member.

SELECT Member.MemberID, Member.MemberName,COUNT(Member.MemberID) AS TotalFeedbacks FROM Member,Rating
WHERE Rating.MemberID = Member.MemberID
GROUP BY Member.MemberID,MemberName;


--iii Find the total number of books published by each publisher. Show publisher id, publisher name, and number of books published.

SELECT Publisher.PublisherID,PublisherName, COUNT(Book.BookID) AS TotalBooksPublished FROM Publisher
INNER JOIN Book ON Book.PublisherID = Publisher.PublisherID
GROUP BY Publisher.PublisherID,PublisherName;


--iv Find the total number of books ordered by store manager from each publisher.

SELECT Publisher.PublisherID, PublisherName,SUM(Quantity) AS TotalBooksOrdered 
FROM ((SupplyOrder
INNER JOIN Publisher ON Publisher.PublisherID=SupplyOrder.PublisherID)
INNER JOIN SupplyOrderDetails ON SupplyOrder.POrderID = SupplyOrderDetails.POrderID)
GROUP BY Publisher.PublisherID,PublisherName;


--v From the book table, list the books where quantity is more than the average quantity of all books. 

SELECT * FROM Book
WHERE Quantity > (SELECT AVG(Quantity) FROM Book);


--vi Find the bestselling book(s).

SELECT * FROM Book
WHERE TotalSold = (SELECT MAX(TotalSold) FROM Book);


--vii Show the member(s) who spent most on buying books

SELECT Member.MemberID, MemberName, IC, ContactNumber, Email, Address, SUM(TotalAmount) AS TotalSpent FROM Member
INNER JOIN SalesOrder ON Member.MemberID= SalesOrder.MemberID
GROUP BY Member.MemberID, MemberName, IC, ContactNumber, Email, Address
HAVING SUM(TotalAmount) = 
(SELECT MAX(total) FROM
(SELECT MemberID,SUM(TotalAmount) AS total FROM SalesOrder 
GROUP BY MemberID)
AS HighestSpent);


--viii Show the member(s) who had not make any order

SELECT * FROM Member
WHERE NOT EXISTS
	(SELECT * FROM SalesOrder
	WHERE Member.MemberID = SalesOrder.MemberID);


--ix A list of purchased books that have not been delivered to members. The list should show member identification number, address, contact number, book serial number, book title, quantity, date and status of delivery.

SELECT IC, Address, ContactNumber, Book.BookID, BookTitle, OrderQuantity, OrderDate, DeliveryStatus
FROM (((SalesOrder
INNER JOIN Member ON SalesOrder.MemberID = Member.MemberID)
INNER JOIN SalesOrderDetails ON SalesOrder.OrderID = SalesOrderDetails.OrderID)
INNER JOIN Book ON SalesOrderDetails.BookID = Book.BookID)
WHERE SalesOrder.DeliveryStatus = 'Incomplete';


--x Show the members who made more than 2 orders.

SELECT Member.MemberID, MemberName, IC, ContactNumber, Email, Address , COUNT(SalesOrder.MemberID) AS TotalOrder FROM Member
INNER JOIN SalesOrder ON Member.MemberID = SalesOrder.MemberID
GROUP BY Member.MemberID, MemberName, IC,ContactNumber, Email, Address
HAVING COUNT(SalesOrder.MemberID) >2;
