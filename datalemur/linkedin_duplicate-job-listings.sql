/*
Assume you're given a table containing job postings from various companies on the LinkedIn platform. Write a query to retrieve the count of companies that have posted duplicate job listings.
*/

WITH count_job AS (
  SELECT
    company_id,
    title,
    description,
    COUNT(job_id) AS job_count
  FROM job_listings
  GROUP BY company_id, title, description)

SELECT 
  COUNT(DISTINCT company_id) AS duplicate_companies
FROM count_job
WHERE job_count > 1;