# SQL 学習ログ（分析基礎）

## 概要
医療データを想定した架空データ（patient_data）を用いて、SQLで集計・比較・割合算出を行う練習記録です。  
「書ける」だけでなく「分析意図→SQL→結果解釈」まで一貫して説明できる状態を目標にしています。

## できること
- CASE を用いたカテゴリ作成（年代など）
- GROUP BY による集計（1軸/2軸）
- 条件付き集計（SUM(CASE WHEN ...)）
- 割合（%）算出（母数の違いを考慮した比較）
- 結果の並び順制御（ORDER BY CASE）

## 使用データ
- patient_data（架空）
  - patient_id, age, smoking, hba1c など

## 学習ログ
- Day1：喫煙別に HbA1c ≥ 7.0 の人数を集計
- Day2：年代別に HbA1c ≥ 8.0 の人数・割合を集計
- Day3：年代 × 喫煙（2軸）で人数・割合を集計（本リポジトリの代表例）

## SQL
- `sql/day03_hba1c_by_agegroup_and_smoking.sql` など
