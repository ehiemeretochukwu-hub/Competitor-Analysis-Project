-- queries.sql
-- Competitor & Market Intelligence Dashboard
-- By Tochukwu Rita Ehiemere | Data Analyst

-- 1. Top 5 Most Funded Startups
SELECT company_name, industry, location, funding_usd, stage
FROM startups
ORDER BY funding_usd DESC
LIMIT 5;

-- 2. Average Funding by Industry
SELECT industry, AVG(funding_usd) AS avg_funding, COUNT(*) AS num_startups
FROM startups
GROUP BY industry
ORDER BY avg_funding DESC;

-- 3. High-Growth Startups (>25% Growth)
SELECT company_name, industry, location, growth_rate_pct, funding_usd
FROM startups
WHERE growth_rate_pct > 25
ORDER BY growth_rate_pct DESC;