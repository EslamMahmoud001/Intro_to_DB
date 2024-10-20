CREATE DATABASE alx_book_store;
USE alx_book_store;


CREATE TABLE BOOKS(book_id INT PRIMARY KEY, title VARCHAR(130), author_id INT, price DOUBLE, publication_date DATE, CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE);
CREATE TABLE Authors(author_id INT PRIMARY KEY, author_name VARCHAR(215))
CREATE TABLE Customers(customer_id INT PRIMARY KEY, customer_name VARCHAR(215), email VARCHAR(215), address TEXT)
CREATE TABLE Orders(order_id INT PRIMARY KEY, customer_id INT, order_date DATE, CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE)
CREATE TABLE Order_Details(orderdetailid INT PRIMARY KEY, order_id INT, book_id INT, quantity DOUBLE, CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE , CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES BOOKS(book_id) ON DELETE CASCADE)