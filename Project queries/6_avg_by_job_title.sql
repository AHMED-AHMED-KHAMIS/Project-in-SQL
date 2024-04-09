/*
Question: What is the average salary by job title?
*/

SELECT     
    t.name AS "Job title",
    ROUND(AVG(salary),0) AS salaries_avg
FROM 
    employees e
JOIN 
    salaries s
    ON e.title_id=s.id
JOIN 
    titles t
    ON  t.id=e.title_id 
GROUP BY
  t.name 
ORDER BY
   salaries_avg DESC;





/*

  RESULTS
  =======
[
  {
    "Job title": "UI/UX Designer",
    "salaries_avg": "97737"
  },
  {
    "Job title": "System Analyst",
    "salaries_avg": "96584"
  },
  {
    "Job title": "QA Tester",
    "salaries_avg": "85333"
  },
  {
    "Job title": "Business Analyst",
    "salaries_avg": "84089"
  },
  {
    "Job title": "Network Engineer",
    "salaries_avg": "82327"
  },
  {
    "Job title": "Data Analyst",
    "salaries_avg": "72523"
  },
  {
    "Job title": "Database Admin",
    "salaries_avg": "71131"
  },
  {
    "Job title": "Project Manager",
    "salaries_avg": "66152"
  },
  {
    "Job title": "IT Consultant",
    "salaries_avg": "63603"
  },
  {
    "Job title": "Software Engineer",
    "salaries_avg": "54693"
  }
]

*/