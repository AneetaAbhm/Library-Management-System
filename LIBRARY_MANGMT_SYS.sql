CREATE DATABASE LIBRARY;

USE LIBRARY;

#1.create tables and insert values into it.
 
CREATE TABLE Branch (Branch_no INT PRIMARY KEY,
Manager_id INT,
Branch_address VARCHAR(255),
Contact_no VARCHAR(15)
);

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(1, 201, '123 Library Lane', '123456'),
(2, 102, '456 Book Street', '234567'),
(3, 103, '789 Novel Avenue', '345678'),
(4, 204, '321 Story Blvd', '456789'),
(5, 105, '654 Read Road', '567890'),
(6, 106, '987 Fiction Court', '678901'),
(7, 107, '111 Knowledge Dr', '789012'),
(8, 108, '222 Wisdom St', '890123'),
(9, 109, '333 Literature Pkwy', '901234'),
(10, 210, '444 Poetry Place', '012345'),
(11, 111, '555 Classic Cir', '123987'),
(12, 112, '666 Epic Dr', '234876'),
(13, 113, '777 Adventure Ln', '345765'),
(14, 114, '888 Mystery Blvd', '456654'),
(15, 115, '999 Sci-Fi Ave', '567543');

CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(255),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(201, 'Alice Johnson', 'Librarian', 50000, 1),
(202, 'Bob Smith', 'Assistant Librarian', 45000, 1),
(203, 'Charlie Davis', 'Branch Manager', 60000, 3),
(204, 'Diana Harris', 'Librarian', 48000, 1),
(205, 'Evan Thompson', 'Library Assistant', 40000, 5),
(206, 'Fiona Martinez', 'Branch Manager', 62000, 6),
(207, 'George Clark', 'Librarian', 51000, 7),
(208, 'Helen Lewis', 'Library Assistant', 43000, 8),
(209, 'Ian Walker', 'Librarian', 52000, 9),
(210, 'Jane Allen', 'Branch Manager', 63000, 1),
(211, 'Kyle Adams', 'Librarian', 49500, 1),
(212, 'Laura Bell', 'Library Assistant', 42000, 12),
(213, 'Mike Carter', 'Librarian', 47000, 13),
(214, 'Nina Evans', 'Assistant Librarian', 44000, 14),
(215, 'Oscar Green', 'Branch Manager', 61000, 1);


CREATE TABLE Books (
    ISBN  BIGINT PRIMARY KEY,
    Book_title VARCHAR(255),
    Category VARCHAR(50),
    Rental_Price DECIMAL(10, 2),
    Status VARCHAR(3),
    Author VARCHAR(255),
    Publisher VARCHAR(255)
);


INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
('9781234567890', 'The Great Adventure', 'Fiction', 25.00, 'yes', 'John Doe', 'Fiction House'),
('9781234567900', 'Science 101', 'Non-fiction', 10.00, 'no', 'Jane Smith', 'Knowledge Press'),
('9781234567910', 'History of Rome', 'History', 12.00, 'yes', 'Marcus Aurelius', 'Ancient Books'),
('9781234567920', 'Cooking with Love', 'Cooking', 30.00, 'yes', 'Emma Brown', 'Culinary Creations'),
('9781234567930', 'Poetry in Motion', 'Poetry', 5.00, 'no', 'Sylvia Plath', 'Poetry Press'),
('9781234567940', 'Physics for Beginners', 'Science', 11.00, 'yes', 'Albert Newton', 'Scientific Books'),
('9781234567950', 'The Mystery Case', 'Mystery', 14.00, 'yes', 'Agatha Christie', 'Mystery Masters'),
('9781234567960', 'A Journey Through Space', 'Science Fiction', 18.00, 'no', 'Isaac Clarke', 'Sci-Fi World'),
('9781234567970', 'Fantasy Realms', 'Fantasy', 16.00, 'yes', 'George R. Martin', 'Fantasy Books'),
('9781234567980', 'Modern Economics', 'Economics', 13.00, 'yes', 'Paul Samuelson', 'Economics Press'),
('9781234567990', 'Art and Expression', 'Art', 7.00, 'no', 'Vincent Van Gogh', 'Artistic Minds'),
('9781234568000', 'Computer Science Basics', 'Technology', 15.00, 'yes', 'Alan Turing', 'Tech Publishers'),
('9781234568010', 'Medical Advances', 'Medicine', 20.00, 'yes', 'Dr. Strange', 'Medical Books Inc.'),
('9781234568020', 'World War II', 'History', 9.00, 'yes', 'Winston Churchill', 'Historical Insights'),
('9781234568030', 'The Art of Design', 'Design', 6.00, 'no', 'Steve Jobs', 'Design World');


CREATE TABLE Customer(
Customer_id INT PRIMARY KEY,
Customer_name VARCHAR(50),
Customer_address VARCHAR(50),
Reg_date DATE
);

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(301, 'Michael Johnson', '789 Park Avenue', '2021-01-15'),
(302, 'Sarah Williams', '456 Elm Street', '2020-12-22'),
(303, 'David Miller', '123 Maple Street', '2022-05-10'),
(304, 'Emily Brown', '321 Oak Avenue', '2021-11-30'),
(305, 'James Wilson', '654 Pine Street', '2019-09-25'),
(306, 'Sophia Taylor', '876 Birch Road', '2022-02-18'),
(307, 'Alexander Anderson', '987 Spruce Court', '2023-03-07'),
(308, 'Isabella Thomas', '111 Cedar Lane', '2020-08-14'),
(309, 'Olivia Martinez', '222 Willow Way', '2021-07-19'),
(310, 'Liam Garcia', '333 Ash Boulevard', '2023-04-01'),
(311, 'Charlotte White', '444 Magnolia Drive', '2019-10-05'),
(312, 'Amelia Thompson', '555 Cherry Street', '2020-03-15'),
(313, 'Benjamin Robinson', '666 Redwood Trail', '2022-09-10'),
(314, 'Mia Harris', '777 Poplar Avenue', '2023-06-17'),
(315, 'Lucas Lewis', '888 Sycamore Road', '2021-12-23');



CREATE TABLE Issue_status(
Issue_id INT PRIMARY KEY,
Issued_cust INT,
FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_id),
Issued_book_name VARCHAR(200),
Issue_date DATE,
Isbn_book BIGINT,
FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

INSERT INTO Issue_status (Issue_id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(401, 301, 'The Great Adventure', '2023-06-01', '9781234567890'),
(402, 302, 'Science 101', '2023-05-20', '9781234567900'),
(403, 303, 'History of Rome', '2023-04-15', '9781234567910'),
(404, 304, 'Cooking with Love', '2023-03-18', '9781234567920'),
(405, 305, 'Poetry in Motion', '2023-06-12', '9781234567930'),
(406, 306, 'Physics for Beginners', '2023-07-09', '9781234567940'),
(407, 307, 'The Mystery Case', '2023-06-22', '9781234567950'),
(408, 308, 'A Journey Through Space', '2023-05-30', '9781234567960'),
(409, 309, 'Fantasy Realms', '2023-04-19', '9781234567970'),
(410, 310, 'Modern Economics', '2023-06-05', '9781234567980'),
(411, 311, 'Art and Expression', '2023-07-01', '9781234567990'),
(412, 312, 'Computer Science Basics', '2023-05-10', '9781234568000');



CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(255),
    Return_date DATE,
    Isbn_book2 BIGINT,
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(501, 301, 'The Great Adventure', '2023-06-10', '9781234567890'),
(502, 302, 'Science 101', '2023-06-25', '9781234567900'),
(503, 303, 'History of Rome', '2023-05-01', '9781234567910'),
(504, 304, 'Cooking with Love', '2023-04-25', '9781234567920'),
(505, 305, 'Poetry in Motion', '2023-06-20', '9781234567930'),
(506, 306, 'Physics for Beginners', '2023-07-18', '9781234567940'),
(507, 307, 'The Mystery Case', '2023-06-30', '9781234567950'),
(508, 308, 'A Journey Through Space', '2023-06-10', '9781234567960'),
(509, 309, 'Fantasy Realms', '2023-05-15', '9781234567970'),
(510, 310, 'Modern Economics', '2023-06-12', '9781234567980'),
(511, 311, 'Art and Expression', '2023-07-10', '9781234567990'),
(512, 312, 'Computer Science Basics', '2023-05-18', '9781234568000'),
(513, 313, 'Medical Advances', '2023-07-25', '9781234568010'),
(514, 314, 'World War II', '2023-06-05', '9781234568020'),
(515, 315, 'The Art of Design', '2023-08-01', '9781234568030');


#1.Retrieve the book title, category, and rental price of all available books
SELECT book_title, Category, Rental_price FROM BOOKS WHERE Status ='Yes';

#2.List the employee names and their respective salaries in descending order of salary.
SELECT Emp_name, Salary FROM Employee ORDER BY Salary DESC;

#3.Retrieve the book titles and the corresponding customers who have issued those books.
SELECT B.Book_title, C.Customer_name FROM Books B JOIN Issue_status I ON B.ISBN = I.Isbn_book JOIN Customer C ON I.Issued_cust = C.Customer_id;

#4.Display the total count of books in each category.
SELECT COUNT(*) AS COUNT_OF_BOOKS,Category FROM Books GROUP BY Category;

#5.Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT Emp_name , Position FROM Employee WHERE Salary >50000;

#6.List the customer names who registered before 2022-01-01 and have not issued any books yet.
SELECT C.Customer_name FROM Customer C LEFT JOIN Issue_status I ON C.Customer_Id = I.Issued_cust WHERE C.Reg_date <'2022-01-01' AND I.Issue_Id IS NULL;

#7.Display the branch numbers and the total count of employees in each branch.
SELECT Branch_no , COUNT(*) AS Employee_count FROM Employee GROUP BY Branch_no;

#8.Display the names of customers who have issued books in the month of June 2023.
SELECT C.Customer_name
FROM Customer C
JOIN Issue_status I ON C.Customer_Id = I.Issued_cust
WHERE MONTH(Issue_date) = 6 AND YEAR(Issue_date) = 2023;


#9.Retrieve book_title from book table containing history.
SELECT Book_title FROM Books WHERE Book_title LIKE '%history%';

#10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
SELECT Branch_no ,COUNT(*) AS Employee_count FROM EMPLOYEE  GROUP BY Branch_no HAVING COUNT(*)>5;

#11.Retrieve the names of employees who manage branches and their respective branch addresses.
SELECT E.Emp_name, B.Branch_address
FROM Employee E
JOIN Branch B ON E.Emp_Id = B.Manager_Id;

#12.Display the names of customers who have issued books with a rental price higher than Rs. 25.
SELECT C.Customer_name, B.Rental_price 
FROM Customer C 
JOIN Issue_status I ON C.Customer_Id = I.Issued_cust 
JOIN Books B ON I.Isbn_book = B.ISBN 
WHERE B.Rental_price > 25;





