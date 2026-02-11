/* How frequent are certain skills requested. ? 
- What relationship do these skills have with the top paying jobs ? 
- what are the optomal skills to learn ? 
With these live data of Actual job postings i will go through it here

1. Join the jop postings with the related skills table 
2. Identify the top 5 in-denand skills for a Data 
3. We want to focus on jobs like Data scientis, enginner and analyst 
thus using the ILIKE '%Data&' we can filter out none data job titles 
*/


select
skills,
COUNT(skills_job_dim.job_id) AS Demand_count
from job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id=skills_job_dim.job_id
inner join skills_dim on skills_dim.skill_id=skills_job_dim.skill_id
WHERE 
Job_title_short ILIKE '%Data%'
GROUP BY
skills
ORDER BY
Demand_count DESC
limit 5


/* SQL has ofcourse come in at number one, followed by python.
Two very techniqal tools that definetly define what workin in Data is.
*/



"skills","demand_count"
"sql","350277"
"python","345666"
"aws","126554"
"r","124064"
"azure","117502"
