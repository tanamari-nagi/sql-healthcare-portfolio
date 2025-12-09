-- 基本分析セット 01_basic_analysis.sql

-- 全患者数
SELECT COUNT(*) AS total_patients
FROM patient_data;

-- 喫煙有無ごとの人数
SELECT smoking, COUNT(*) AS cnt
FROM patient_data
GROUP BY smoking;

-- 喫煙有無ごとの平均 HbA1c
SELECT smoking, AVG(HbA1c) AS avg_HbA1c
FROM patient_data
GROUP BY smoking;

-- 年代別の人数
SELECT
  CASE
    WHEN age < 40 THEN 'under40'
    WHEN age BETWEEN 40 AND 49 THEN '40s'
    WHEN age BETWEEN 50 AND 59 THEN '50s'
    ELSE 'over60'
  END AS age_group,
  COUNT(*) AS cnt
FROM patient_data
GROUP BY age_group
ORDER BY age_group;
