
WITH remote_job AS (

SELECT
    skill_id,
    COUNT(*) AS skill_count

FROM
    skills_job_dim AS job_to_skill

INNER JOIN job_postings_fact AS job_postings
    ON job_to_skill.job_id = job_postings.job_id

WHERE
    job_postings.job_work_from_home = TRUE

GROUP BY
    skill_id
)

SELECT
    skill.skill_id,
    skills AS skill_name,
    skill_count
FROM
    remote_job

INNER JOIN skills_dim AS skill
    ON skill.skill_id = remote_job.skill_id

ORDER BY
    skill_count DESC

LIMIT 10

