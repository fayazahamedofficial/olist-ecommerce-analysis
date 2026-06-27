# Olist E-Commerce: Late Delivery & Complaint Analysis

## Project Overview

An end-to-end SQL data analysis project using the Olist Brazilian E-Commerce dataset (100k orders, 2016-2018) to answer the business question:

"Which product categories have the highest late delivery and complaint rates, and what is the estimated revenue impact if the top problem categories were improved?"

## Live Dashboard

View Interactive Dashboard:
https://datastudio.google.com/reporting/fc0026c3-6f03-4719-b4ee-7da302108097

Tip: Use filters to explore by date, category, state and seller

---

## Key Findings

| Metric | Value |
|---|---|
| Total Orders Analyzed | 110,832 |
| Overall Late Delivery Rate | 6.58% |
| Overall Complaint Rate | 14.68% |
| Total Revenue at Risk | R$423,472 |

### Top Categories by Late Delivery Rate
- Mattress and Upholstery - 13.51% (2x platform average)
- Home Comfort - 13.33%
- Audio - 11.57%

### Top Categories by Revenue at Risk
- Health and Beauty - R$107,199 at risk
- Watches and Gifts - R$91,221 at risk
- Bed Bath and Table - R$87,297 at risk

### Root Causes Identified
- Late orders are 20% heavier on average (2,465g vs 2,061g)
- One seller has a 94% late delivery rate across 469 orders
- Northeast Brazil states have the highest late rates (AL: 21%)

---

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Google BigQuery | Cloud data warehouse |
| SQL | Data cleaning, modeling, KPI calculation |
| Google Looker Studio | Interactive dashboard |
| Git and GitHub | Version control |

---

## Project Structure

- data/raw - Raw CSV files (not modified)
- sql/03_explore - Data exploration queries
- sql/04_clean - Data cleaning queries
- sql/05_master - Business data model
- sql/06_kpi - KPI calculations
- sql/07_rootcause - Root cause analysis
- sql/08_dashboard - Dashboard summary tables
- docs - Documentation and recommendations

---

## Project Workflow

| Step | Description |
|---|---|
| 1 | Dataset download and setup |
| 2 | BigQuery setup and table loading |
| 3 | Data exploration |
| 4 | Data cleaning and validation |
| 5 | Business SQL data model |
| 6 | KPI creation |
| 7 | Root cause analysis |
| 8 | Dashboard creation |
| 9 | Executive recommendations |

---

## Key SQL Concepts Used

- JOINs - Connected 5 tables using LEFT JOINs
- CASE WHEN - Created flag columns
- DATE_DIFF - Calculated delivery delays
- COUNTIF and SUMIF - Calculated KPI rates
- GROUP BY - Aggregated data by category

---

## Business Recommendations

1. Audit high-risk sellers - Start with 94% late rate seller
2. Improve Northeast logistics - AL, MA, SE, CE, PI
3. Special handling for heavy products - Items over 2,500g
4. Prioritize Health and Beauty - R$107k revenue at risk
5. Track Revenue at Risk monthly - Target 50% reduction

---

## Dataset

- Source: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce
- Period: 2016 - 2018
- Size: 100,000 orders
- Tables: 9 CSV files

---

Built as a portfolio project for Data Analyst applications