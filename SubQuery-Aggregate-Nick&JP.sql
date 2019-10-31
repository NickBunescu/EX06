/* Query- by JP and Nick - Aggregate Function */

SELECT e.EmployeeNumber, e.FirstName, e.LastName, a.HoursWorked
FROM ASSIGNMENT AS a, EMPLOYEE AS e
WHERE HoursWorked >
  (SELECT AVG(HoursWorked)
   FROM ASSIGNMENT
   WHERE e.EmployeeNumber=a.EmployeeNumber)
ORDER BY e.EmployeeNumber;

