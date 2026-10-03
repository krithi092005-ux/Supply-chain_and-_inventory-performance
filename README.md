📦 End-to-End Inventory & Supply Chain Data Analytics Project
📌 Overview
This project demonstrates an end-to-end data analytics workflow, starting from raw dataset exploration and data cleaning to SQL-based database analysis and interactive dashboard creation.
The project utilizes Python for Exploratory Data Analysis (EDA) and data preprocessing, PostgreSQL for relational database querying and supply chain metrics analysis, and Power BI for visual storytelling and interactive dashboard development.
A detailed analytical report and executive presentation were also created to communicate actionable findings and operational insights to stakeholders.

📂 Dataset
The project uses a structured supply chain dataset containing 1,200 records spanning from 2022 to 2024 across multiple regions, categories, and warehouses.
Key attributes included in the dataset:
Operational Details: Date, Region, Category, Supplier, Warehouse, Order Status
Performance & Inventory Metrics: Units Sold, Inventory Level, Transportation Cost, Order Accuracy, Lead Time (Days), Backorder, Cost of Goods Sold (COGS), Average Inventory, Warehouse Capacity
The dataset was initially loaded and inspected using Python to evaluate its structure, check data types, detect missing values or duplicate entries, and analyze statistical distributions.

🛠️ Tools & TechnologiesTool 
Library                                    Purpose            
Python                                Core data analysis, scripting, and preprocessing
Pandas / NumPy                        Data manipulation, cleansing, and aggregation
Matplotlib / Seaborn                  Exploratory data visualization and distribution analysis
PostgreSQL                            Relational database storage, schema management, and SQL analysis 
Power BI                              Interactive dashboard development and KPI visualization 
Gamma                                 Executive project presentation deck
MS Word / PDF                         Comprehensive analytical report

🔄 Project Workflow
Raw Supply Chain Dataset
     ↓
Python Data Loading & Inspection
     ↓
Exploratory Data Analysis (EDA)
     ↓
Data Cleaning & Preprocessing
     ↓
PostgreSQL Database Migration
     ↓
SQL Queries & Performance Analysis
     ↓
Power BI Interactive Dashboard
     ↓
Key Operational Insights & Results
     ↓
Analytical Report & Presentation

🚀 Project Steps
1. Data Loading & Inspection
The dataset was imported into Python using Pandas. Initial inspection included:
Verifying dataset dimensions (1,200 rows, 15 columns).
Reviewing column headers and data types.
Checking for missing values and duplicate records.
Extracting summary statistical distributions.

2. Exploratory Data Analysis (EDA)
EDA was performed to uncover operational characteristics and patterns within the supply chain:
Univariate analysis of numerical metrics (Units Sold, Cost of Goods Sold (COGS), Lead Time (Days)).
Categorical breakdowns across regions (North, East, South, West) and product categories (Accessories, Electronics, Furniture, Clothing).
Evaluating correlations between inventory levels, transportation costs, and warehouse capacities.
Generating distribution plots and visual charts.

3. Data Cleaning & Preprocessing
The dataset was thoroughly cleaned before database migration:
Standardized date fields into uniform datetime format.
Confirmed zero missing values and zero duplicate rows in the primary record set.
Validated boolean and numeric types to ensure seamless integration with downstream SQL databases (Supply_Chain_Cleaned.csv).

4. PostgreSQL & SQL Analysis
The cleaned dataset was imported into PostgreSQL for structured relational querying and operational analysis. SQL queries were used to answer key supply chain questions, such as:
What is the total Cost of Goods Sold (COGS) and total units sold across different regions?
Which suppliers and warehouses experience the highest backorder rates or lead times?
How do transportation costs scale relative to inventory levels and order fulfillment status?
SQL techniques utilized: SELECT, WHERE, GROUP BY, ORDER BY, aggregate functions (SUM(), AVG(), COUNT()), and subqueries.

5. Power BI Dashboard Development
The analyzed data was connected to Power BI to build a dynamic, interactive operational dashboard featuring:
KPI Cards: Displaying total units sold, aggregate COGS, and average lead times.
Visual Breakdown: Region-wise and category-wise performance comparisons.
Fulfillment Tracking: Order status breakdown (Fulfilled, Pending, Canceled).
Interactive Slicers: Dynamic filtering by warehouse, supplier, and date ranges.

📊 Dashboard Highlights
The Power BI dashboard provides a visual command center for tracking key supply chain metrics:
Revenue and COGS financial overview.
Supplier performance and lead-time bottlenecks.
Warehouse capacity utilization vs. average inventory levels.
Backorder frequency and order accuracy tracking.

📈 Key Results & Insights
Identified top-performing product categories and high-volume regional warehouses.
Quantified supply chain efficiency, isolating critical bottlenecks in supplier lead times and transportation costs.
Leveraged SQL queries to extract deep operational insights into backorder triggers.
Successfully translated technical data findings into executive-ready business reports and interactive visualizations.

📄 Project Report
A detailed analytical report was compiled covering the project introduction, dataset descriptions, EDA findings, SQL query architecture, Power BI dashboard design, and strategic recommendations for supply chain optimization.

🎤 Project Presentation
An engaging presentation created via Gamma summarizing the project workflow, technical analysis, dashboard walkthrough, and core business takeaways.

⭐ Project Summary
This project highlights an end-to-end data analytics capability—successfully bridging Python preprocessing, relational SQL database querying, and Power BI visual storytelling to solve real-world supply chain and inventory management challenges.
