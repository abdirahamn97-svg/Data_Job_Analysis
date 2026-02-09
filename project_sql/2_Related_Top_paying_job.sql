/*
Although i focused on the UK, in this i will be giving a general scope of what skills pay the most 
- Why ?  Unfortunately the data collected doesnt have enough for a proper UK job market analysis
- steps 1 remove UK filterting and include all locations 
- steps 2 add the specific skills required for these roles 
*/


With top_paying_jobs as (
    SELECT
        job_id,
        job_title,
        job_location,
        job_schedule_type,
        salary_year_avg,
        job_posted_date,
        company_dim.name
    from 
        job_postings_fact
    left join company_dim on job_postings_fact.company_id=company_dim.company_id
    where 
    salary_year_avg is not null 
    order by
    salary_year_avg desc 
    limit 20 )

select
top_paying_jobs.*,
skills_dim.skills 
from top_paying_jobs
inner join skills_job_dim on top_paying_jobs.job_id=skills_job_dim.job_id
inner join skills_dim on skills_dim.skill_id=skills_job_dim.skill_id