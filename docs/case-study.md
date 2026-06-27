\# Case Study: Olist E-Commerce Delivery Analysis



\*\*Analyst: Fayaz Ahamed

\*\*Tools:\*\* SQL • BigQuery • Looker Studio • GitHub

\*\*Dataset:\*\* Olist Brazilian E-Commerce (100k orders, 2016-2018)



\---



\## The Problem



Olist, Brazil's largest e-commerce marketplace, needed to understand 

which product categories were driving late deliveries and customer 

complaints — and quantify the financial impact of these issues.



\*\*Business Question:\*\*

"Which product categories have the highest late delivery and complaint 

rates, and what is the estimated revenue impact?"



\---



\## My Approach



1\. Loaded 9 CSV tables into BigQuery

2\. Cleaned and validated 110,832 order records

3\. Built a 5-table SQL data model using LEFT JOINs

4\. Calculated 4 KPIs: late delivery rate, complaint rate, 

&#x20;  revenue by category, revenue at risk

5\. Identified root causes through statistical analysis

6\. Built an interactive Looker Studio dashboard



\---



\## Key Findings



| KPI | Finding |

|---|---|

| Overall Late Delivery Rate | 6.58% |

| Overall Complaint Rate | 14.68% |

| Highest Risk Category | Health \& Beauty (R$107k at risk) |

| Worst Late Delivery Category | Mattress \& Upholstery (13.51%) |

| Highest Complaint Category | Office Furniture (25.21%) |

| Total Revenue at Risk | R$423,472 |



\*\*Root Causes Identified:\*\*

\- Late orders are 20% heavier (2,465g vs 2,061g)

\- One seller has 94% late delivery rate (469 orders)

\- Northeast Brazil states have 14-21% late rates



\---



\## Business Impact



| Recommendation | Expected Impact |

|---|---|

| Audit high-risk sellers | -15-20% late delivery rate |

| Improve Northeast logistics | -50% Northeast late rate |

| Weight-based handling policy | -25-30% heavy product delays |

| \*\*Total revenue protected\*\* | \*\*R$423,472\*\* |



\---



\## Links



\- GitHub: https://github.com/fayazahamedofficial/olist-ecommerce-analysis

\- Dashboard: https://datastudio.google.com/reporting/fc0026c3-6f03-4719-b4ee-7da302108097



\---



\*This project demonstrates end-to-end data analysis skills including 

SQL, cloud data warehousing, KPI development, root cause analysis, 

and data visualization.\*

