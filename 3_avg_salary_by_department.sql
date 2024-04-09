/*
Question: What is the average salary by department?
 _ Here I will Identify the average salary by department in the entire organization.
 _ Why?
Resource Allocation:
     Understanding average salaries helps allocate resources effectively.
    Departments with higher salaries may require additional budget for talent retention or skill development.
     It guides decisions on hiring, promotions, and bonuses.

Budget Planning:
  Budgets depend on personnel costs. Knowing average salaries aids in financial planning.
  Organizations can allocate funds strategically based on departmental needs.

Equity and Fairness:
  Comparing salaries ensures fairness. Disparities can impact morale and productivity.
  HR can address any inequities and promote a positive work environment.

Benchmarking:
  Comparing average salaries with industry standards helps stay competitive.
  It provides context for evaluating compensation practices.

Retention Strategies:
  High or low averages may signal retention challenges.
  HR can focus on retaining top talent or addressing turnover.
*/


SELECT 
    d.name,
   ROUND(AVG(salary),1) AS salaries_avg
from 
  employees e
JOIN 
  departments d
  ON e.department_id=d.id
JOIN 
   salaries s
  ON   s.employee_id=e.id
GROUP BY
   d.name
ORDER BY
   salaries_avg DESC;





/*
  RESULTS
  =======


Average Salaries Across Departments:
The overall average salary across all departments is approximately $75,148.06.

HR Department’s Average Salary:
The Human Resources (HR) department has an average salary of approximately $74,362.77.
The HR department’s average salary is slightly below the overall organization’s average.


Performance-Based Bonuses: Reward exceptional performance to motivate HR professionals.
Professional Development: Invest in training and certifications to boost skills and value.
Retention Efforts: Focus on retaining experienced HR staff to avoid turnover costs.

For the organization in general:

Budget Optimization: Departments with higher average salaries (e.g., Marketing, R&D) may need to justify their budget allocation.
Equity and Fairness: Ensure salary equity across departments to maintain employee morale and prevent disparities.
Benchmarking: Compare salaries with industry standards to stay competitive.

[
  {
    "name": "Marketing",
    "salaries_avg": "76493.50"
  },
  {
    "name": "Research and Development",
    "salaries_avg": "76456.87"
  },
  {
    "name": "Sales",
    "salaries_avg": "76170.58"
  },
  {
    "name": "IT",
    "salaries_avg": "76089.65"
  },
  {
    "name": "Customer Service",
    "salaries_avg": "75141.46"
  },
  {
    "name": "Operations",
    "salaries_avg": "75034.50"
  },
  {
    "name": "Legal",
    "salaries_avg": "74841.15"
  },
  {
    "name": "Finance",
    "salaries_avg": "74482.89"
  },
  {
    "name": "Human Resources",
    "salaries_avg": "74362.77"
  },
  {
    "name": "Administration",
    "salaries_avg": "72407.24"
  }
]
*/