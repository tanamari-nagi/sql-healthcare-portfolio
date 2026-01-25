/*
Purpose:
Compare the proportion of high-risk patients (HbA1c ≥ 8.0)
between smokers and non-smokers, accounting for differences
in total patient population size.

Table:
patient_data
- smoking
- hba1c
*/

SELECT
  smoking,
  COUNT(*) AS total_patients,
  SUM(CASE WHEN hba1c >= 8.0 THEN 1 ELSE 0 END) AS hba1c_8plus,
  100.0 * SUM(CASE WHEN hba1c >= 8.0 THEN 1 ELSE 0 END) / COUNT(*) AS pct_hba1c_8plus
FROM patient_data
GROUP BY smoking;
