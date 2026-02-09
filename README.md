# bike_sales_analysis
Bike Sales Analysis using Python, SQL, and Power BI.  Includes data cleaning, exploratory analysis, KPI tracking, and interactive dashboards.
Bike Sales Analysis – India
📌 Project Overview

This project analyzes used bike sales data across India to understand how resale value, depreciation, brand performance, and regional demand influence pricing and market behavior.
The goal is to support data-driven decision-making for bike dealers, sellers, and resale platforms.

The project demonstrates an end-to-end data analytics workflow using Python, SQL, and Power BI.

🎯 Business Objectives

Identify factors affecting resale price and depreciation

Analyze brand-wise and fuel-type performance

Understand regional and city-tier demand patterns

Provide actionable business recommendations for dealers and sellers

📂 Dataset Information

Rows: 10,000

Columns: 18

Scope: Used bike sales across multiple Indian states

Key Features

Bike Details: Brand, model, engine CC, fuel type, insurance status

Pricing: Original price, resale price, depreciation, depreciation percentage

Ownership & Seller Info: Owner type, seller type

Location & Time: State, city tier, manufacturing year, registration year

Missing Values: None

🛠️ Tools & Technologies Used

Python (Pandas): Data cleaning, preprocessing, feature engineering

SQL (PostgreSQL): Business analysis, aggregations, window functions, CTEs

Power BI: Interactive dashboard, KPIs, trends, and insights

GitHub: Version control and project documentation

🧹 Data Cleaning & Feature Engineering (Python)

Checked and handled duplicates and missing values

Standardized column names (snake_case)

Converted price-related columns to numeric format

Performed outlier checks on price and resale price

Created new features:

depreciation

depreciation_percentage

price_segment

Loaded cleaned data into PostgreSQL for SQL analysis

📊 Data Analysis (SQL)

Key business questions answered using SQL:

Brand-wise revenue and performance analysis

Top 5 brands by average resale price

Average depreciation and depreciation percentage by fuel type

Ownership analysis (which owner type holds the most bikes)

Brand ranking using window functions

Top 3 bike models per brand using CTEs

State-wise contribution to total resale value

📈 Power BI Dashboard

An interactive dashboard was built to visualize insights, including:

KPI cards (Total Sales, Avg Price, Avg Resale, Avg Depreciation)

Price vs Resale scatter plot

Brand and fuel-type performance

Year-wise resale trends

Seller type and city-tier analysis

Interactive slicers for better exploration

🔑 Key Insights

Premium brands retain higher resale value, indicating stronger brand trust

Depreciation varies significantly by brand and fuel type

Dealer-led sales dominate resale transactions

Metro and Tier-1 cities generate higher resale value

Bikes with expired insurance tend to sell at lower resale prices

Higher original price generally leads to higher resale value, but brand matters

💡 Business Recommendations

Dealers should prioritize brands with lower depreciation to reduce inventory risk

Offering insurance renewal packages can improve resale prices and buyer confidence

Fuel types with lower depreciation should be promoted as safer resale investments

Brands performing consistently well across states should be prioritized for expansion

📌 Conclusion

This project showcases a complete analytics pipeline—from data cleaning and SQL analysis to visualization and business insights.
It highlights how structured data analysis can drive better pricing, inventory planning, and market strategies in the used-bike resale market.

📬 Contact

Author: Abhishek
📍 Aspiring Data Analyst
