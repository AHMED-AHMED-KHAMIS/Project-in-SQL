/*

Question: What are the number of employees in each department?
_ Here I will Identify the number of employees in each department.
_ Why? For the HR Department:
Resource Allocation: Knowing the number of employees in the HR department helps allocate resources effectively. It ensures that there are sufficient HR professionals to handle various tasks such as recruitment, employee relations, benefits administration, and training.
Workload Distribution: By tracking the headcount, HR managers can distribute workloads evenly. If the department is understaffed, it may lead to burnout and inefficiency.

For the Entire Organization:
Strategic Planning: Understanding the overall headcount informs strategic decisions. It helps leaders plan for growth, expansion, or downsizing.
Budgeting and Cost Control: Employee salaries, benefits, and other costs constitute a significant portion of the organization’s budget. Accurate headcount data aids in budgeting and cost control.

*/
SELECT 
    d.name,
    COUNT(*) AS "Employees Number"
from 
  employees e
JOIN 
  departments d
  ON e.department_id=d.id  
GROUP BY name
ORDER BY 
  "Employees Number" DESC ;





/*
  RESULTS
  =======

Average Number of Employees Across All Departments:
The average number of employees across all departments is 200.

Budget Allocation by Department:

To understand the organization’s financial health, we need to examine how the budget is distributed across departments.
Calculate the budget allocation for each department by multiplying the average salary by the number of employees in that department.
Sum up the budgets across all departments to get the total organizational budget.



Budget Efficiency Metrics:

Evaluate the organization’s budget efficiency by considering metrics such as revenue per employee and profit margin.

Revenue per employee:
   Revenue per Employee=(Total Revenue​) / (Total Employees)

Profit margin:
   Profit Margin=(Net Profit) / (Total Revenue)​×100%

[
  {
    "name": "Sales",
    "Employees Number": "219"
  },
  {
    "name": "Legal",
    "Employees Number": "215"
  },
  {
    "name": "Human Resources",
    "Employees Number": "210"
  },
  {
    "name": "Customer Service",
    "Employees Number": "206"
  },
  {
    "name": "Finance",
    "Employees Number": "203"
  },
  {
    "name": "Research and Development",
    "Employees Number": "200"
  },
  {
    "name": "Marketing",
    "Employees Number": "197"
  },
  {
    "name": "IT",
    "Employees Number": "187"
  },
  {
    "name": "Administration",
    "Employees Number": "184"
  },
  {
    "name": "Operations",
    "Employees Number": "179"
  }
]
*/