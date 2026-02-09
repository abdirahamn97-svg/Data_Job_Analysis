

/*
Question : What are the Top-paying data related jobs ? we will be doing this for the uk
- identify the top 10 highest-paying Data roles that are available remotely. 
- focus on job postings with specified salaries ( remove nulls).
- why ?  highlights the top-paying opportunities for data and in the UK, offering insights into employment 
*/

select*
from job_postings_fact
where job_country = 'United Kingdom'

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
job_country = 'United Kingdom' and
salary_year_avg is not null 
order by
salary_year_avg desc 
limit 10


