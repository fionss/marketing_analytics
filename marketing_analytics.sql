SELECT COUNT(*) AS total 
FROM raw.bank_marketing;

SELECT 
	subscription, 
	COUNT(*) AS total,
	ROUND(COUNT(*) * 100.0
		/ SUM(COUNT(*)) OVER(), 1) AS pct 
FROM raw.bank_marketing
GROUP BY subscription;
 
SELECT *  
FROM raw.bank_marketing;

SELECT 
	age,
	NULLIF(job, 'unknown')  AS job,
	NULLIF(marital, 'unknown') AS marital,
	NULLIF(education, 'unknown') AS education,
	NULLIF([default], 'unknown') AS credit_default,
	NULLIF(housing, 'unknown') AS housing,
	NULLIF(loan, 'unknown') AS loan, 
	contact, 
	month,
	day_of_week, 
	duration, 
	campaign, 
	NULLIF(pdays, 999) AS pdays,
	previous,
	NULLIF(poutcome, 'unknown') AS poutcome, 
	emp_var_rate,
	cons_price_idx,
	cons_conf_idx,
	euribor3m,
	nr_employed,
	subscription, 
	CASE WHEN subscription = 'yes'
		THEN 1 ELSE 0
	END  AS converted 
INTO raw.bank_marketing_clean 
FROM raw.bank_marketing;

SELECT *
FROM raw.bank_marketing_clean;  

SELECT month 
FROM raw.bank_marketing_clean;

-- Overall conversion rate

SELECT 
	COUNT(*) AS total_contacts,
	SUM(converted) AS total_conversions,
	SUM(CASE WHEN subscription = 'no' THEN 1 ELSE 0 END) AS total_non_conversions,
	ROUND(SUM(converted) * 100.0 / COUNT(*), 2) AS conversion_rate_pct,
	ROUND(SUM(CASE WHEN subscription = 'no' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS non_conversion_rate_pct
FROM raw.bank_marketing_clean;

-- Conversion rate by month 

SELECT 
	month,
	COUNT(*) AS total_contacts,
	SUM(converted) AS total_conversions, 
	ROUND(SUM(converted) * 100.0 / COUNT(*), 2) AS conversion_rate_pct
FROM raw.bank_marketing_clean
GROUP BY month
ORDER BY
 CASE month 
		WHEN 'mar' THEN 3
		WHEN 'apr' THEN 4
		WHEN 'may' THEN 5
		WHEN 'jun' THEN 6 
		WHEN 'jul' THEN 7
		WHEN 'aug' THEN 8
		WHEN 'sep' THEN 9 
		WHEN 'oct' THEN 10
		WHEN 'nov' THEN 11
		WHEN 'dec' THEN 12
	END;
	
-- Conversion rate by contact channel
SELECT 
	contact,
	COUNT(*) AS total_contacts,
	SUM(converted) AS total_conversions,
	ROUND(SUM(converted) * 100.0 / COUNT(*), 2) AS conversion_rate_pct,
	ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS volume_share_pct
FROM raw.bank_marketing_clean
GROUP BY contact;

-- Previous campaign outcome 
SELECT 
	poutcome AS previous_outcome,
	COUNT(*) AS total_contacts,
	SUM(converted) AS total_conversions,
	ROUND(SUM(converted) * 100.0 / COUNT(*), 2) AS conversion_rate_pct
FROM raw.bank_marketing_clean
WHERE poutcome IS NOT NULL
GROUP BY poutcome
ORDER BY conversion_rate_pct DESC;


-- Number of converts vs conversions 
SELECT 
	campaign AS num_contacts, 
	COUNT(*) AS total_customers,
	SUM(converted) AS total_conversions,
	ROUND(SUM(converted) * 100.0 / COUNT(*), 2) AS conversion_rate_pct
FROM raw.bank_marketing_clean
GROUP BY campaign
ORDER BY campaign ASC;

-- Conversion rate by job 
SELECT 
	job, 
	COUNT(*) AS total_contacts,
	SUM(converted) AS total_conversions,
	ROUND(SUM(converted) * 100.0 / COUNT(*), 2) AS conversion_rate_pct
FROM raw.bank_marketing_clean
WHERE job IS NOT NULL
GROUP BY job
ORDER BY conversion_rate_pct DESC;


-- Conversion rate by educational level
SELECT 
	education,
	COUNT(*) AS total_contacts,
	SUM(converted) AS total_conversions,
	ROUND(SUM(converted) * 100.0 / COUNT(*), 2) AS conversion_rate_pct
FROM raw.bank_marketing_clean
WHERE education IS NOT NULL
GROUP BY education
ORDER BY conversion_rate_pct DESC;

-- Conversion rate by age group 
SELECT
	CASE 
		WHEN age < 25 THEN 'Under 25'
		WHEN age BETWEEN 25 AND 35 THEN '25-35'
		WHEN age BETWEEN 36 AND 45 THEN '36-45'
		WHEN age BETWEEN 46 AND 55 THEN '46-55'
		ELSE '55+'
	END AS ag_group,
	COUNT(*) AS total_contacts,
	SUM(converted) AS total_conversions,
	ROUND(SUM(converted) * 100.0 / COUNT(*), 2) AS conversion_rate_pct
FROM raw.bank_marketing_clean
GROUP BY
	CASE 
		WHEN age < 25 THEN 'Under 25'
		WHEN age BETWEEN 25 AND 35 THEN '25-35'
		WHEN age BETWEEN 36 AND 45 THEN '36-45'
		WHEN age BETWEEN 46 AND 55 THEN '46-55'
		ELSE '55+'
	END
ORDER BY conversion_rate_pct DESC;

-- Converter vs Non-converter profile 
SELECT 
	subscription,
	ROUND(AVG(CAST(age AS FLOAT)), 1) AS average_age,
	ROUND(AVG(CAST(duration AS FLOAT)) / 60, 1) AS average_call_mins,
	ROUND(AVG(CAST(campaign AS FLOAT)), 1) AS average_num_contacts,
	ROUND(AVG(CAST(previous AS FLOAT)), 1) AS average_prev_contacts,
	ROUND(AVG(euribor3m), 3) AS average_euribor_rate,
	ROUND(AVG(CAST(pdays AS FLOAT)), 1) AS average_days_since_contact
FROM raw.bank_marketing_clean
GROUP BY subscription;

