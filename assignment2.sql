-- Mandeep Kaur 8608986 ---

-- Part 1 --
-- Query 1 --
Select Quotedprice , QuantityOrdered as revenue From order_details
Where  (Quotedprice * QuantityOrdered);

-- Query 2 --
Select EmpFirstName,EmpLastName,TIMESTAMPDIFF(year,EmpBirthDate,Now()) as Age From employees order by Age asc;



-- Part 4 --
-- Query 1
Select Distinct customers.CustFirstName,customers.CustPhoneNumber From customers 
Join orders On customers.CustomerID = orders.CustomerID 
Join order_details On orders.OrderNumber = order_details.OrderNumber 
Join products On order_details.ProductNumber =products.ProductNumber 
Where products.ProductName like '%helmet%';


-- Query 2 --
select c.custfirstname , e.empfirstname from customers c
inner join employees e
on  c.custfirstname =  e.empfirstname;


-- Part 5 --

select sum(quantityordered*quotedprice*2) as total from order_details as od 
join orders o on od.ordernumber = o.ordernumber 
join customers as c on o.customerid = c.customerid where c.custState = 'OR';
