/*
   Question: Show employees with multiple salaries.

_ Here I will Identify the employees with multiple salaries in the entire organization.

_ Why? 
  Tracking multiple salaries ensures accurate budgeting.
  Organizations can allocate funds appropriately and prevent overpayment.
*/


SELECT 
    e.id,
    concat(first_name,' ',last_name) AS FULL_Name,
        salary
FROM 
    employees e 
JOIN
     salaries s
     ON e.id=s.employee_id
WHERE 
    e.id 
    IN(SELECT employee_id FROM salaries GROUP BY employee_id HAVING COUNT(employee_id)>1)
ORDER BY salary DESC;



/*
  RESULTS
  =======
[
  {
    "id": 54,
    "full_name": "Robert Smith",
    "salary": 70000
  },
  {
    "id": 54,
    "full_name": "Robert Smith",
    "salary": 67251
  },
  {
    "id": 1,
    "full_name": "Samantha Miller",
    "salary": 60000
  },
  {
    "id": 20,
    "full_name": "Christopher Smith",
    "salary": 55000
  },
  {
    "id": 1,
    "full_name": "Samantha Miller",
    "salary": 54693
  },
  {
    "id": 20,
    "full_name": "Christopher Smith",
    "salary": 50699
  }
]
*/