SELECT
    Company_name,
    CASE
        WHEN Total_jobs <= 10 THEN 'small'
        WHEN Total_jobs >10 AND Total_jobs <= 50 THEN 'Medium'
    ELSE 'Large'
    END AS Category

FROM ( 
SELECT
    Company_table.name AS Company_name,
    COUNT (*) AS Total_jobs

FROM
    company_dim AS Company_table


LEFT JOIN job_postings_fact AS Job_table
    ON Company_table.company_id = Job_table.company_id


GROUP BY
    Company_table.name
)



             