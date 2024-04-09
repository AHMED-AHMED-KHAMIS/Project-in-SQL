/*
Question: How has the average salary changed over time, and are there any notable trends?
*/
SELECT 
    EXTRACT(YEAR FROM start_date) AS start_year,
    ROUND(AVG(salary),0) AS salaries_avg
FROM 
    salaries
GROUP BY 
    start_year
ORDER BY
     start_year;




/*

  RESULTS
  =======
Insights:
The average salary decreased by approximately 2.13% from 2018 to 2023.
Possible reasons for this decline could include economic fluctuations, organizational changes, or shifts in industry norms.
HR should closely monitor salary trends and consider adjustments to remain competitive.

[
  {
    "start_year": "2018",
    "salaries_avg": "76224"
  },
  {
    "start_year": "2019",
    "salaries_avg": "76387"
  },
  {
    "start_year": "2020",
    "salaries_avg": "75804"
  },
  {
    "start_year": "2021",
    "salaries_avg": "74341"
  },
  {
    "start_year": "2022",
    "salaries_avg": "74334"
  },
  {
    "start_year": "2023",
    "salaries_avg": "74601"
  }
]

*/