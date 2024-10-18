# Library Management System

## Project Overview

The **Library Management System** is a SQL-driven solution designed to streamline the management of books, employees, customers, and transactions (such as book issues and returns) within a library. This system keeps a comprehensive record of:
- The books available in the library (including details like category, price, and availability)
- Employees working in the library branches
- Customers registered with the library
- Issuing and returning status of books

## Project Structure

This project is based on a SQL schema that organizes data into the following six tables:

### 1. **Branch**  
Manages the library branches and their contact information.  
- `Branch_no`: Primary Key  
- `Manager_id`: Manager’s Employee ID  
- `Branch_address`: Address of the branch  
- `Contact_no`: Contact number of the branch  

### 2. **Employee**  
Stores information about the employees working at the library branches.  
- `Emp_Id`: Primary Key  
- `Emp_name`: Employee’s Name  
- `Position`: Employee’s Position  
- `Salary`: Employee’s Salary  
- `Branch_no`: Foreign Key referencing `Branch_no` from the `Branch` table  

### 3. **Books**  
Contains details about the books in the library.  
- `ISBN`: Primary Key  
- `Book_title`: Title of the book  
- `Category`: Genre or category of the book  
- `Rental_Price`: Price for renting the book  
- `Status`: Indicates if the book is available ('yes') or not ('no')  
- `Author`: Author of the book  
- `Publisher`: Publisher of the book  

### 4. **Customer**  
Stores information about the customers registered in the library.  
- `Customer_id`: Primary Key  
- `Customer_name`: Customer’s Name  
- `Customer_address`: Address of the customer  
- `Reg_date`: Date of customer registration  

### 5. **IssueStatus**  
Tracks the books that have been issued to customers.  
- `Issue_id`: Primary Key  
- `Issued_cust`: Foreign Key referencing `Customer_Id` from the `Customer` table  
- `Issued_book_name`: Title of the book issued  
- `Issue_date`: Date when the book was issued  
- `Isbn_book`: Foreign Key referencing `ISBN` from the `Books` table  

### 6. **ReturnStatus**  
Tracks the books that have been returned by customers.  
- `Return_Id`: Primary Key  
- `Return_cust`: Foreign Key referencing `Customer_Id` from the `Customer` table  
- `Return_book_name`: Title of the book returned  
- `Return_date`: Date when the book was returned  
- `Isbn_book2`: Foreign Key referencing `ISBN` from the `Books` table  

---

## Queries 

The following SQL queries answer the project’s required functionality:

#### 1. **Retrieve the book title, category, and rental price of all available books**.
#### 2. **List the employee names and their respective salaries in descending order of salary**.
#### 3. **Retrieve the book titles and the corresponding customers who have issued the book**.
#### 4. **Display the total count of books in each category**.
#### 5. **Retrieve the employee names and their positions for employees whose salaries are above Rs.50,000:**.
#### 6. **List the customer names who registered before 2022-01-01 and have not issued any books yet**.
#### 7. **Display the branch numbers and the total count of employees in each branch**.
#### 8. **Display the names of customers who have issued books in the month of June 2023**.
#### 9. **Retrieve book titles from the Books table containing the word 'history'**.
#### 10. **Retrieve the branch numbers along with the count of employees for branches having more than 5 employees**.
#### 11. **Retrieve the names of employees who manage branches and their respective branch addresses**.
#### 12. **Display the names of customers who have issued books with a rental price higher than Rs. 25**.

### How to Run the Project
1. **Clone the Repository: Begin by cloning this repository to your local machine.**
2. **Set Up the Database: Import the provided SQL script into your MySQL database (or any compatible SQL database).**
3. **Perform Operations: Run the queries associated with the project to carry out the necessary operations.**
