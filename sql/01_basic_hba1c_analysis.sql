-- Basic SQL Analysis of HbA1c Levels and Smoking Status

-- Select patients with HbA1c >= 7.0 (poor glycemic control)
SELECT *
FROM patient_data
WHERE HbA1c >= 7.0;

-- Count patients whose HbA1c is 7.0 or higher
SELECT COUNT(*) AS patient_count
FROM patient_data
WHERE HbA1c >= 7.0;

-- Compare average HbA1c by smoking status
-- among patients with HbA1c >= 7.0
SELECT
    smoking,
    AVG(HbA1c) AS avg_hba1c
FROM patient_data
WHERE HbA1c >= 7.0
GROUP BY smoking
HAVING AVG(HbA1c) >= 7.5;

