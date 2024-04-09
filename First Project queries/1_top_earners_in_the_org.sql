/* 
Question: Who are the top earners employees in the organization?
 _ Here I will Identify the top 15 Highest-earning employees in the entire organization.
 _ Why? Highlighting the top-earning positions in the organization gives insights to the HR department and will help them make improved decisions according to these insights. 

*/

SELECT 
    e.id,
    concat(first_name,' ',last_name) AS FULL_Name,
        salary,
        t.name AS "Job title",
        d.name AS "Department Name"
FROM 
    salaries s
JOIN 
    employees e
ON 
    e.id=s.employee_id
JOIN
     titles t
ON 
    t.id=e.title_id
JOIN
   departments d
  ON d.id=department_id    
ORDER BY 
  salary DESC
LIMIT 15;



/*
  RESULTS
  =======


Salary Distribution:
The salary distribution across the top 15 earners appears to be relatively uniform, with no extreme outliers. This suggests that the organization maintains a balanced compensation structure.
However, further analysis could reveal whether there are any significant gaps between the highest and lowest earners within this group.

Job Titles:
Among the top earners, we observe a diverse range of job titles, including Database Admin, Data Analyst, QA Tester, Software Engineer, System Analyst, and Network Engineer.
This diversity indicates that the organization values various skill sets and roles, contributing to its overall success.

Departmental Insights:
The HR department stands out as a significant contributor to the top earners. With 30.00% representation, HR professionals play a crucial role in the organization’s financial success.
Other departments, such as Legal, Sales, and Finance, also have notable representation among the highest earners.
The Marketing, Research and Development, and Operations departments have fewer top earners, suggesting potential areas for growth and investment.

Salary Trends Over Time:
Analyzing salary trends over multiple years could provide valuable insights. For instance, identifying whether salaries have been consistently rising or if there are fluctuations can guide strategic decisions.  
[
  {
    "id": 1406,
    "full_name": "John Miller",
    "salary": 99985,
    "Job title": "Database Admin",
    "Department Name": "Legal"
  },
  {
    "id": 799,
    "full_name": "Jane Lee",
    "salary": 99968,
    "Job title": "Data Analyst",
    "Department Name": "Human Resources"
  },
  {
    "id": 1661,
    "full_name": "John Brown",
    "salary": 99922,
    "Job title": "QA Tester",
    "Department Name": "Sales"
  },
  {
    "id": 1230,
    "full_name": "Christopher Lee",
    "salary": 99915,
    "Job title": "Software Engineer",
    "Department Name": "Human Resources"
  },
  {
    "id": 95,
    "full_name": "Sophia Doe",
    "salary": 99907,
    "Job title": "Database Admin",
    "Department Name": "Human Resources"
  },
  {
    "id": 482,
    "full_name": "Olivia Brown",
    "salary": 99878,
    "Job title": "System Analyst",
    "Department Name": "Finance"
  },
  {
    "id": 1241,
    "full_name": "Daniel Johnson",
    "salary": 99854,
    "Job title": "QA Tester",
    "Department Name": "Operations"
  },
  {
    "id": 771,
    "full_name": "Robert Lee",
    "salary": 99809,
    "Job title": "Network Engineer",
    "Department Name": "Marketing"
  },
  {
    "id": 502,
    "full_name": "Emily Brown",
    "salary": 99802,
    "Job title": "System Analyst",
    "Department Name": "Research and Development"
  },
  {
    "id": 1103,
    "full_name": "Michael Hall",
    "salary": 99735,
    "Job title": "Network Engineer",
    "Department Name": "Administration"
  }
]
*/