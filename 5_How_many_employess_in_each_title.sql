/*
   Question: What is the employee number by job title or department?

*/



SELECT 
    t.name AS "Job title",
    COUNT(*) AS "Employees Number"
from 
    employees e
JOIN
     titles t
    ON 
        e.title_id=t.id  
GROUP BY t.name
ORDER BY "Employees Number" DESC;


/*

  RESULTS
  =======

[
  {
    "Job title": "IT Consultant",
    "Employees Number": "216"
  },
  {
    "Job title": "QA Tester",
    "Employees Number": "209"
  },
  {
    "Job title": "UI/UX Designer",
    "Employees Number": "204"
  },
  {
    "Job title": "Software Engineer",
    "Employees Number": "203"
  },
  {
    "Job title": "Project Manager",
    "Employees Number": "200"
  },
  {
    "Job title": "Network Engineer",
    "Employees Number": "200"
  },
  {
    "Job title": "Business Analyst",
    "Employees Number": "197"
  },
  {
    "Job title": "Database Admin",
    "Employees Number": "196"
  },
  {
    "Job title": "System Analyst",
    "Employees Number": "195"
  },
  {
    "Job title": "Data Analyst",
    "Employees Number": "180"
  }
]
*/