CREATE DATABASE Cornershop;

USE Cornershop;
 
CREATE TABLE Inventory (
ProductID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Product_Description VARCHAR(50),
Category VARCHAR(15),
Pack_Size INT,
Price FLOAT,
Inv_Quantity INT
);
 
CREATE TABLE Inbound(
Delivery_Date DATE NOT NULL,
ProductID INT NOT NULL,
Quantity INT NOT NULL,
FOREIGN KEY (ProductID) REFERENCES inventory(ProductID)
);
 
CREATE TABLE Customer(
CustomerID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
First_Name VARCHAR(20),
Last_Name VARCHAR(20),
Phone_Number VARCHAR(11),
Email LONG 	VARCHAR,
Loyalty_Scheme BOOLEAN,
Loyalty_Points INT
);
 
CREATE TABLE Sales(
OrderID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Sale_Date date,
ProductID INT,
Quantity INT,
CustomerID INT,
FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID),
FOREIGN KEY (ProductID) REFERENCES inventory(ProductID)
);