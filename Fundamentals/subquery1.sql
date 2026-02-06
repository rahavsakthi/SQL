SELECT 
    job_title_short AS Job_title,
    CASE 
         WHEN salary_year_avg <  200000 THEN 'low'
         WHEN salary_year_avg >  200000 AND salary_year_avg < 400000 THEN 'Standard'
         ELSE 'HIGH'
    END AS CATEGORY,
    COUNT(job_id) AS job_Count
FROM job_postings_fact

/*WHERE
     job_title_short = 'Data Analyst'*/

GROUP BY
     job_title_short,
     CATEGORY,
     salary_year_avg