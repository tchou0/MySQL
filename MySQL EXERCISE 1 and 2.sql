use northwind;  

-- --------------------EXERCISE 1 --------------------- --
/* Question 1:
SELECT CategoryName
FROM Categories; */


/* Question 4
SELECT MIN(OrderDate) AS first_order_date
FROM Orders;           = 1998-05-06 00:00:00 */

/*  Question 5
 SELECT MAX(OrderDate) AS last_order_date
FROM Orders;          = 1998-05-06 00:00:00 */

/* Question 6 
SELECT COUNT(*) AS total_customers
FROM Customers;       = currently have 93 customers */


/*  Question 7 
SELECT COUNT(*) AS count_suppliers
FROM Suppliers
WHERE Country IN ('South America', 'Europe', 'Africe');    = 0 */


/*  Question 8
SELECT ProductName, UnitPrice
FROM products
ORDER BY UnitPrice DESC
LIMIT 1;    		 = the most expensive product is 263.5 ProdutName: Cte de Blaye */

/* Question 9
 SELECT ProductName, UnitPrice
FROM products
ORDER BY UnitPrice ASC   
LIMIT 1;  			 = the least expensive product is 2.5 ProductName : Geitost */


-- --------------------EXERCISE 2--------------------- --
-- Question 1 
/* SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'northwind'
  AND TABLE_TYPE = 'BASE TABLE'; */
  
-- Question 2 
/*SELECT ProductID, ProductName, UnitPrice
FROM Products;   */

-- Question 3 
/* SELECT ProductID, ProductName, UnitPrice
FROM Products
order by UnitPrice ASC; */

-- Question 4 
/*select ProductName, UnitPrice
FROM Products 
WHERE UnitPrice <= 7.5; */

-- Question 5 
/* SELECT ProductName
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC; */

-- Question 6 
/* SELECT ProductName, UnitPrice
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC; */

-- Question 7 
/* SELECT ProductName
FROM Products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0
ORDER BY ProductName; */

-- Question 8
/*SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'northwind' AND TABLE_NAME = 'Categories'; */

-- Question 9 
/*SELECT CategoryID
FROM Products
WHERE CategoryName = 'Seafood'; */

-- Question 10
/* SELECT ProductName
FROM Products
WHERE CategoryID IN (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Seafood'
); */

-- Question 11 
/* SELECT FirstName, LastName
FROM Employees; */

-- Question 12   
/* SELECT FirstName, LastName
FROM Employees
WHERE Title LIKE '%Manager%'; */

-- Question 13
/* SELECT DISTINCT Title
FROM Employees; */

-- Question 14
/* SELECT FirstName, LastName
FROM Employees
WHERE Salary BETWEEN 2000 AND 2500; */

-- Question 15 
/*SELECT * From suppliers;*/

-- Question 16  
/* SELECT ProductName
FROM Products
WHERE SupplierID = (
    SELECT SupplierID
    FROM Suppliers
    WHERE CompanyName = 'Tokyo Traders'
); */

-- =================================== EXERCISE 3 =========================== --
-- QUESTION 1 :
/* SELECT COUNT(*) AS SupplierCount
 FROM Suppliers;                  = 29 */

-- QUESTION 2 :
 /* SELECT SUM(salary)  AS Total_Salary
 FROM employees					= 20362.929931640625 */

-- QUESTION 3 :
/* SELECT  MIN(UnitPrice) AS Cheapest_Price
FROM Products;				    = 2.5000 */

-- QUESTION 4 :
/* SELECT AVG(UnitPrice)
From products;					= 28.86636364 */

-- QUESTION 5 :
/* SELECT MAX(unitPrice)
FROM products;					= 263.5000 */

-- QUESTION 6 :
 -- SELECT SupplierID, COUNT(*) AS NumberOfItems
--  FROM Products
--  GROUP BY SupplierID;

-- QUESTION 7 :
/* SELECT CategoryID, AVG(UnitPrice) AS AveragePrice
FROM Products
GROUP BY CategoryID; */ 

-- QUESTION 8 :
/* SELECT SupplierID, COUNT(*) AS NumberOfISupplierIDtems
FROM Products
GROUP BY SupplierID
HAVING COUNT(*) >= 5; */


-- QUESTION 9 :
/* SELECT productID, productname, (unitprice*unitsinstock )AS inventory_value
From products
ORDER BY inventory_value DESC, productname; */

  
  
  
  
