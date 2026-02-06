/*
What are the most in-demand skills for data analysts?
Identify the top 10 in-demand skills for a data analyst.
Focus on all job postings.
Why? Retrieves the top 10 skills with the highest demand in the job market.
*/

SELECT
    skills,
    COUNT(skills_job_dim.job_id) AS skill_count


FROM job_postings_fact

INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE
    job_title_short = 'Data Analyst'

GROUP BY
    skills

ORDER BY
    skill_count DESC

LIMIT 10

/*
Analysis Breakdown:
SQL is non-negotiable – it is the single most important skill for high-paying Data Analyst roles.
Excel is still powerful – even at top salary levels, strong Excel skills remain relevant.
Python is a career accelerator – roles paying more expect automation, scripting, and advanced analysis.
Visualization tools drive impact – Tableau and Power BI are key for translating data into decisions.
Business context matters – presentation and enterprise tools (PowerPoint, SAP) signal analyst-to-stakeholder influence

[
  {
    "skills": "sql",
    "skill_count": "92628"
  },
  {
    "skills": "excel",
    "skill_count": "67031"
  },
  {
    "skills": "python",
    "skill_count": "57326"
  },
  {
    "skills": "tableau",
    "skill_count": "46554"
  },
  {
    "skills": "power bi",
    "skill_count": "39468"
  },
  {
    "skills": "r",
    "skill_count": "30075"
  },
  {
    "skills": "sas",
    "skill_count": "28068"
  },
  {
    "skills": "powerpoint",
    "skill_count": "13848"
  },
  {
    "skills": "word",
    "skill_count": "13591"
  },
  {
    "skills": "sap",
    "skill_count": "11297"
  }
]
*/
