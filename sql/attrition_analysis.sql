-- SQLite-compatible IBM HR attrition queries
SELECT Department, ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS attrition_rate_pct
FROM ibm_hr_analytics GROUP BY Department ORDER BY attrition_rate_pct DESC;

SELECT JobRole, ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS attrition_rate_pct
FROM ibm_hr_analytics GROUP BY JobRole ORDER BY attrition_rate_pct DESC;

SELECT OverTime, ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS attrition_rate_pct
FROM ibm_hr_analytics GROUP BY OverTime ORDER BY attrition_rate_pct DESC;

SELECT JobSatisfaction, OverTime, COUNT(*) AS employees,
ROUND(100.0*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS attrition_rate_pct
FROM ibm_hr_analytics GROUP BY JobSatisfaction, OverTime ORDER BY attrition_rate_pct DESC;
