USE MetroAlt;

--1. Return all the employees
SELECT * FROM Employee;

--2. Return only the last name, first name and emails for all employees
SELECT EmployeeLastName,EmployeeFirstName,EmployeeEmail FROM Employee;

--3. Return all the employees sorted by Last name alphabetically
SELECT * FROM Employee ORDER BY EmployeeLastName ASC;

--4. Sort the employees by hire date most recent first
SELECT * FROM Employee ORDER BY EmployeeHireDate DESC;

--5.List all the employees who live in Seattle
SELECT * FROM Employee WHERE EmployeeCity='Seattle';

--6. List all the employees who do not live in Seattle
SELECT * FROM Employee WHERE EmployeeCity != 'Seattle';

--7. List the employees who do not have listed phones

SELECT * FROM Employee WHERE EmployeePhone IS NULL;

--8.List only the employees who have phones

SELECT * FROM Employee WHERE EmployeePhone IS NOT NULL;

--9. List all the employees whose last name starts with “c.”

SELECT * FROM Employee WHERE EmployeeLastName LIKE 'c%';

--10. List all the employee keys and their wages sorted by 
--pay from highest to lowest

SELECT EmployeeKey,EmployeeHourlyPayRate FROM EmployeePosition
ORDER BY  EmployeeHourlyPayRate DESC;

--11. List all the employee keys and their hourly 
--wage for those with PositionKey equal to 2 (mechanics)
SELECT EmployeeKey,EmployeeHourlyPayRate FROM EmployeePosition
WHERE PositionKey = 2;

--12. Return the top 10 of the query for question 11
SELECT TOP 10 EmployeeKey,EmployeeHourlyPayRate FROM EmployeePosition
WHERE PositionKey = 2;

--13.  Using the same query offset by 20 and list 10
	--?? DONT UNDERSTAND DIRECTIONS HERE --30 through 40??

--Use the table BusScheduleAssignment
--14. Return the busdriverKey and the busrouteKey 
--but remove all duplicates

SELECT DISTINCT BusDriverShiftKey,BusRouteKey FROM BusScheduleAssignment
ORDER BY BusDriverShiftKey, BusRouteKey ASC;
