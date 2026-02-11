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
Order BY
salary_year_avg desc 

/* There is a positive relationship between technical specialization and salary:
More advanced infrastructure / backend / big data skills → Higher average pay.
General analytics skills → Moderate pay.
Basic business tools → Lower relative pay */

[
  {
    "job_id": 177779,
    "job_title": "Data Scientist",
    "job_location": "Madison, SD",
    "salary_year_avg": "960000.0",
    "job_posted_date": "2023-05-04 19:06:06",
    "name": "East River Electric Power Cooperative, Inc.",
    "skills": "python"
  },
  {
    "job_id": 177779,
    "job_title": "Data Scientist",
    "job_location": "Madison, SD",
    "salary_year_avg": "960000.0",
    "job_posted_date": "2023-05-04 19:06:06",
    "name": "East River Electric Power Cooperative, Inc.",
    "skills": "java"
  },
  {
    "job_id": 177779,
    "job_title": "Data Scientist",
    "job_location": "Madison, SD",
    "salary_year_avg": "960000.0",
    "job_posted_date": "2023-05-04 19:06:06",
    "name": "East River Electric Power Cooperative, Inc.",
    "skills": "r"
  },
  {
    "job_id": 177779,
    "job_title": "Data Scientist",
    "job_location": "Madison, SD",
    "salary_year_avg": "960000.0",
    "job_posted_date": "2023-05-04 19:06:06",
    "name": "East River Electric Power Cooperative, Inc.",
    "skills": "c++"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "sql"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "python"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "java"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "c#"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "azure"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "databricks"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "spark"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "pandas"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "pyspark"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "hadoop"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "tensorflow"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "keras"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "pytorch"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "jupyter"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "scikit-learn"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "matplotlib"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "plotly"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "seaborn"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "linux"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "git"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "kubernetes"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "docker"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "github"
  },
  {
    "job_id": 1008448,
    "job_title": "Senior Data Scientist",
    "job_location": "Pretoria, South Africa",
    "salary_year_avg": "890000.0",
    "job_posted_date": "2023-11-02 10:31:43",
    "name": "MSP Staffing  LTD",
    "skills": "gitlab"
  },
  {
    "job_id": 551617,
    "job_title": "Geographic Information Systems Analyst - GIS Analyst",
    "job_location": "New York, NY",
    "salary_year_avg": "585000.0",
    "job_posted_date": "2023-12-27 18:00:12",
    "name": "ReServe",
    "skills": "excel"
  },
  {
    "job_id": 40145,
    "job_title": "Staff Data Scientist/Quant Researcher",
    "job_location": "Anywhere",
    "salary_year_avg": "550000.0",
    "job_posted_date": "2023-08-16 16:05:16",
    "name": "Selby Jennings",
    "skills": "sql"
  },
  {
    "job_id": 40145,
    "job_title": "Staff Data Scientist/Quant Researcher",
    "job_location": "Anywhere",
    "salary_year_avg": "550000.0",
    "job_posted_date": "2023-08-16 16:05:16",
    "name": "Selby Jennings",
    "skills": "python"
  },
  {
    "job_id": 223758,
    "job_title": "Hybrid - Data Engineer - Up to $600k",
    "job_location": "New York, NY",
    "salary_year_avg": "525000.0",
    "job_posted_date": "2023-04-05 16:08:42",
    "name": "Durlston Partners",
    "skills": "python"
  },
  {
    "job_id": 223758,
    "job_title": "Hybrid - Data Engineer - Up to $600k",
    "job_location": "New York, NY",
    "salary_year_avg": "525000.0",
    "job_posted_date": "2023-04-05 16:08:42",
    "name": "Durlston Partners",
    "skills": "c++"
  },
  {
    "job_id": 1714768,
    "job_title": "Staff Data Scientist - Business Analytics",
    "job_location": "Anywhere",
    "salary_year_avg": "525000.0",
    "job_posted_date": "2023-09-01 19:24:02",
    "name": "Selby Jennings",
    "skills": "sql"
  },
  {
    "job_id": 1495652,
    "job_title": "VP Data Science & Research",
    "job_location": "Menlo Park, CA",
    "salary_year_avg": "463500.0",
    "job_posted_date": "2023-11-08 12:23:39",
    "name": "WhatsApp",
    "skills": "go"
  },
  {
    "job_id": 1455311,
    "job_title": "Data Scientist (L5) - Member Product",
    "job_location": "California City, CA",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-12-19 14:03:56",
    "name": "Netflix",
    "skills": "sql"
  },
  {
    "job_id": 1455311,
    "job_title": "Data Scientist (L5) - Member Product",
    "job_location": "California City, CA",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-12-19 14:03:56",
    "name": "Netflix",
    "skills": "python"
  },
  {
    "job_id": 1455311,
    "job_title": "Data Scientist (L5) - Member Product",
    "job_location": "California City, CA",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-12-19 14:03:56",
    "name": "Netflix",
    "skills": "r"
  },
  {
    "job_id": 1300865,
    "job_title": "Data Scientist (L5) - Messaging",
    "job_location": "Los Gatos, CA",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-17 08:04:12",
    "name": "Netflix",
    "skills": "sql"
  },
  {
    "job_id": 1300865,
    "job_title": "Data Scientist (L5) - Messaging",
    "job_location": "Los Gatos, CA",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-17 08:04:12",
    "name": "Netflix",
    "skills": "python"
  },
  {
    "job_id": 1300865,
    "job_title": "Data Scientist (L5) - Messaging",
    "job_location": "Los Gatos, CA",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-17 08:04:12",
    "name": "Netflix",
    "skills": "r"
  },
  {
    "job_id": 1300865,
    "job_title": "Data Scientist (L5) - Messaging",
    "job_location": "Los Gatos, CA",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-17 08:04:12",
    "name": "Netflix",
    "skills": "spark"
  },
  {
    "job_id": 1300865,
    "job_title": "Data Scientist (L5) - Messaging",
    "job_location": "Los Gatos, CA",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-17 08:04:12",
    "name": "Netflix",
    "skills": "excel"
  },
  {
    "job_id": 730717,
    "job_title": "Data Engineer (L4) - Games",
    "job_location": "New York, NY",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-14 10:47:26",
    "name": "Netflix",
    "skills": "sql"
  },
  {
    "job_id": 730717,
    "job_title": "Data Engineer (L4) - Games",
    "job_location": "New York, NY",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-14 10:47:26",
    "name": "Netflix",
    "skills": "python"
  },
  {
    "job_id": 730717,
    "job_title": "Data Engineer (L4) - Games",
    "job_location": "New York, NY",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-14 10:47:26",
    "name": "Netflix",
    "skills": "scala"
  },
  {
    "job_id": 730717,
    "job_title": "Data Engineer (L4) - Games",
    "job_location": "New York, NY",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-14 10:47:26",
    "name": "Netflix",
    "skills": "java"
  },
  {
    "job_id": 730717,
    "job_title": "Data Engineer (L4) - Games",
    "job_location": "New York, NY",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-14 10:47:26",
    "name": "Netflix",
    "skills": "aws"
  },
  {
    "job_id": 730717,
    "job_title": "Data Engineer (L4) - Games",
    "job_location": "New York, NY",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-14 10:47:26",
    "name": "Netflix",
    "skills": "spark"
  },
  {
    "job_id": 730717,
    "job_title": "Data Engineer (L4) - Games",
    "job_location": "New York, NY",
    "salary_year_avg": "450000.0",
    "job_posted_date": "2023-08-14 10:47:26",
    "name": "Netflix",
    "skills": "excel"
  },
  {
    "job_id": 1246179,
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16",
    "name": "Winston Fox",
    "skills": "sql"
  },
  {
    "job_id": 1246179,
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16",
    "name": "Winston Fox",
    "skills": "python"
  },
  {
    "job_id": 1246179,
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16",
    "name": "Winston Fox",
    "skills": "scala"
  },
  {
    "job_id": 1246179,
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16",
    "name": "Winston Fox",
    "skills": "java"
  },
  {
    "job_id": 1246179,
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16",
    "name": "Winston Fox",
    "skills": "c#"
  },
  {
    "job_id": 1246179,
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16",
    "name": "Winston Fox",
    "skills": "snowflake"
  },
  {
    "job_id": 1246179,
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16",
    "name": "Winston Fox",
    "skills": "spark"
  },
  {
    "job_id": 1246179,
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16",
    "name": "Winston Fox",
    "skills": "kafka"
  },
  {
    "job_id": 1246179,
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16",
    "name": "Winston Fox",
    "skills": "kubernetes"
  },
  {
    "job_id": 1246179,
    "job_title": "Senior Data Engineer, Security Master",
    "job_location": null,
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-05-26 10:41:16",
    "name": "Winston Fox",
    "skills": "docker"
  },
  {
    "job_id": 13646,
    "job_title": "Hybrid - Data Engineer",
    "job_location": "New York, NY",
    "salary_year_avg": "425000.0",
    "job_posted_date": "2023-07-25 19:08:57",
    "name": "Durlston Partners",
    "skills": "python"
  },
  {
    "job_id": 209315,
    "job_title": "Data base administrator",
    "job_location": "Belarus",
    "salary_year_avg": "400000.0",
    "job_posted_date": "2023-10-03 11:22:20",
    "name": "ЛАНИТ",
    "skills": "oracle"
  },
  {
    "job_id": 209315,
    "job_title": "Data base administrator",
    "job_location": "Belarus",
    "salary_year_avg": "400000.0",
    "job_posted_date": "2023-10-03 11:22:20",
    "name": "ЛАНИТ",
    "skills": "kafka"
  },
  {
    "job_id": 209315,
    "job_title": "Data base administrator",
    "job_location": "Belarus",
    "salary_year_avg": "400000.0",
    "job_posted_date": "2023-10-03 11:22:20",
    "name": "ЛАНИТ",
    "skills": "linux"
  },
  {
    "job_id": 209315,
    "job_title": "Data base administrator",
    "job_location": "Belarus",
    "salary_year_avg": "400000.0",
    "job_posted_date": "2023-10-03 11:22:20",
    "name": "ЛАНИТ",
    "skills": "git"
  },
  {
    "job_id": 209315,
    "job_title": "Data base administrator",
    "job_location": "Belarus",
    "salary_year_avg": "400000.0",
    "job_posted_date": "2023-10-03 11:22:20",
    "name": "ЛАНИТ",
    "skills": "svn"
  },
  {
    "job_id": 831052,
    "job_title": "Hybrid - Data Engineer - Up to $500k",
    "job_location": "New York, NY",
    "salary_year_avg": "400000.0",
    "job_posted_date": "2023-06-30 16:11:21",
    "name": "Durlston Partners",
    "skills": "python"
  },
  {
    "job_id": 229926,
    "job_title": "Data Engineer",
    "job_location": null,
    "salary_year_avg": "390000.0",
    "job_posted_date": "2023-07-11 17:13:42",
    "name": "Greenfield Source",
    "skills": "python"
  },
  {
    "job_id": 229926,
    "job_title": "Data Engineer",
    "job_location": null,
    "salary_year_avg": "390000.0",
    "job_posted_date": "2023-07-11 17:13:42",
    "name": "Greenfield Source",
    "skills": "go"
  },
  {
    "job_id": 229926,
    "job_title": "Data Engineer",
    "job_location": null,
    "salary_year_avg": "390000.0",
    "job_posted_date": "2023-07-11 17:13:42",
    "name": "Greenfield Source",
    "skills": "linux"
  },
  {
    "job_id": 229926,
    "job_title": "Data Engineer",
    "job_location": null,
    "salary_year_avg": "390000.0",
    "job_posted_date": "2023-07-11 17:13:42",
    "name": "Greenfield Source",
    "skills": "excel"
  },
  {
    "job_id": 648429,
    "job_title": "Principal Economist / Scientist",
    "job_location": "San Mateo, CA",
    "salary_year_avg": "387460.0",
    "job_posted_date": "2023-08-23 08:03:55",
    "name": "Roblox",
    "skills": "sql"
  },
  {
    "job_id": 648429,
    "job_title": "Principal Economist / Scientist",
    "job_location": "San Mateo, CA",
    "salary_year_avg": "387460.0",
    "job_posted_date": "2023-08-23 08:03:55",
    "name": "Roblox",
    "skills": "python"
  },
  {
    "job_id": 648429,
    "job_title": "Principal Economist / Scientist",
    "job_location": "San Mateo, CA",
    "salary_year_avg": "387460.0",
    "job_posted_date": "2023-08-23 08:03:55",
    "name": "Roblox",
    "skills": "r"
  },
  {
    "job_id": 648429,
    "job_title": "Principal Economist / Scientist",
    "job_location": "San Mateo, CA",
    "salary_year_avg": "387460.0",
    "job_posted_date": "2023-08-23 08:03:55",
    "name": "Roblox",
    "skills": "go"
  },
  {
    "job_id": 648429,
    "job_title": "Principal Economist / Scientist",
    "job_location": "San Mateo, CA",
    "salary_year_avg": "387460.0",
    "job_posted_date": "2023-08-23 08:03:55",
    "name": "Roblox",
    "skills": "spark"
  },
  {
    "job_id": 648429,
    "job_title": "Principal Economist / Scientist",
    "job_location": "San Mateo, CA",
    "salary_year_avg": "387460.0",
    "job_posted_date": "2023-08-23 08:03:55",
    "name": "Roblox",
    "skills": "airflow"
  },
  {
    "job_id": 648429,
    "job_title": "Principal Economist / Scientist",
    "job_location": "San Mateo, CA",
    "salary_year_avg": "387460.0",
    "job_posted_date": "2023-08-23 08:03:55",
    "name": "Roblox",
    "skills": "hadoop"
  }
]