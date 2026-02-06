
SELECT 
    skills_dim.skills AS Skill,
    skill_ref
FROM (
    SELECT 
    skill_id,
    COUNT (skill_id) AS Top_skills
    FROM skills_job_dim
    GROUP BY
         skill_id
) AS skill_ref
LEFT JOIN skills_dim 
    ON skill_ref.skill_id = skills_dim.skill_id



    



