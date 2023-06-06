use northwind;  

-- --------------------EXERCISE 1 --------------------- --
/* Question 1:
SELECT CategoryName
FROM Categories;

Beverages
Condiments
Confections
Dairy Products
Grains/Cereals
Meat/Poultry
Produce
Seafood*/

/* Question 3  :
SELECT DISTINCT Country
FROM Customers; 	

Germany
Mexico
UK
Sweden
France
Spain
Canada
Argentina
Switzerland
Brazil
AustriaItaly
Portugal
USA
Venezuela
Ireland
Belgium
Norway
Denmark
Finland
Poland
*/


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

  
  