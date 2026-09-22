CREATE DATABASE marketing_analysis;
USE marketing_analysis;
SELECT * 
FROM hok_makeup_dataset
LIMIT 10;
SELECT COUNT(*) 
FROM hok_makeup_dataset;
SELECT SUM(revenue) 
FROM hok_makeup_dataset;
SELECT `Campaign_Name`, SUM(revenue) AS total_revenue
FROM hok_makeup_dataset
GROUP BY `Campaign_Name`
ORDER BY total_revenue DESC;
ALTER TABLE hok_makeup_dataset RENAME COLUMN  `ï»¿Campaign Name` TO Campaign_Name;
SELECT channel, SUM(revenue)
FROM hok_makeup_dataset
GROUP BY channel
ORDER BY SUM(revenue) DESC;
SELECT 
SUM(revenue) AS total_revenue,
SUM(spend) AS total_spend,
SUM(clicks) AS total_clicks,
SUM(impressions) AS total_impressions,
SUM(conversions) AS total_conversions
FROM hok_makeup_dataset;
SELECT 
`Campaign_Name`,
SUM(revenue) AS total_revenue
FROM hok_makeup_dataset
GROUP BY `Campaign_Name`
ORDER BY total_revenue DESC;
SELECT 
`Campaign_Name`,
SUM(revenue) AS revenue,
SUM(spend) AS spend,
(SUM(revenue) - SUM(spend)) / SUM(spend) AS ROI
FROM hok_makeup_dataset
GROUP BY `Campaign_Name`
ORDER BY ROI DESC;
SELECT 
`Campaign_Name`,
SUM(revenue - spend) AS profit
FROM hok_makeup_dataset
GROUP BY `Campaign_Name`
ORDER BY profit DESC;
SELECT 
city,
SUM(revenue) AS revenue
FROM hok_makeup_dataset
GROUP BY city
ORDER BY revenue DESC;
SELECT 
`Age Group`,
SUM(conversions) AS total_conversions
FROM hok_makeup_dataset
GROUP BY `Age Group`
ORDER BY total_conversions DESC;
SELECT 
gender,
SUM(conversions) AS conversions
FROM hok_makeup_dataset
GROUP BY gender
ORDER BY conversions DESC;
SELECT 
SUM(impressions) AS impressions,
SUM(clicks) AS clicks,
SUM(conversions) AS conversions,
SUM(clicks)/SUM(impressions) AS CTR,
SUM(conversions)/SUM(clicks) AS conversion_rate
FROM hok_makeup_dataset;

SELECT 
MONTH(date) AS month,
SUM(revenue) AS total_revenue
FROM hok_makeup_dataset
GROUP BY month
ORDER BY month;


