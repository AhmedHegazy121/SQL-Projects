# SQL-Projects

Welcome to my **SQL Projects** repository! This repository demonstrates my expertise in SQL through a variety of projects that tackle real-world data challenges, including performance optimization, data cleaning, advanced querying, and analytics.

## 📦 Project Structure
```text
📦 SQL-Projects
├── 📁 Data
│   └── Raw and cleaned datasets
├── 📁 Scripts
│   ├── Queries.sql
│   ├── DataCleaning.sql
│   ├── ETL.sql
├── 📁 Reports
│   └── Insights and visualizations
└── README.md
```
- [📚 Featured Projects](#featured-projects)

### [SQL Query Performance Best Practices](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/30%20SQL%20Tips%20and%20Tricks.sql) 
**[Link to Project](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/30%20SQL%20Tips%20and%20Tricks.sql)**

- Select Only Needed Columns: Avoid SELECT * and specify columns explicitly.
- Minimize DISTINCT and ORDER BY Usage: Use them only when necessary.
- Limit Rows for Exploration: Use TOP or LIMIT to restrict the number of rows retrieved.
- Index Frequently Used Columns: Create nonclustered indexes for columns used in WHERE clauses.
- Avoid Functions on Columns in Filters: Use alternatives like LIKE, BETWEEN, or raw comparisons.
- Avoid Leading Wildcards: Use patterns like 'prefix%' instead of '%pattern%'.
- Use IN for Multiple Conditions: Replace OR with IN for better readability and performance.
- Prefer Inner Joins: They generally perform faster than outer joins.
- Use Explicit Joins: ANSI joins (INNER JOIN) are preferred over implicit joins.
- Index Join Columns: Ensure columns in ON clauses are indexed.
- Filter Early: Apply filters before joining or during the join process.
- Aggregate Before Joining Large Tables: Pre-aggregate data to reduce the rows processed in joins.
- Use UNION ALL Instead of UNION: If duplicates are acceptable, opt for UNION ALL.
- Optimize Nested Loops: Use SQL hints like OPTION (HASH JOIN) for large and small table joins.
- Use Columnstore Indexes for Aggregation: They enhance performance for large datasets.
- Pre-Aggregate for Reporting: Store summarized data in separate tables for faster queries.
- Choose JOIN or EXISTS Over IN: Use EXISTS for large tables to avoid redundant row processing.
- Avoid Redundant Logic: Simplify queries using CASE and window functions where applicable.
- Use Appropriate Data Types: Avoid TEXT and VARCHAR(MAX) when smaller sizes suffice.
- Limit Data Type Sizes: Use precise lengths for VARCHAR and other data types.


### [SQL Value Window Functions | LEAD, LAG, FIRST_VALUE, LAST_VALUE](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/SQL%20Value%20Window%20Functions.sql)


**Tasks :**
- Analyze the month-over-month (MoM) performonce by finding the percentage change in sales between the current and previous month.
- Anaylze customer loyalty by ranking customers based on the average number of days between  orders
- Find the  lowest and highest sales for each product
- use case compare to Extermes How well a value is performing relative to the extremes








### [Advanced SQL Aggregate Window Functions ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Advanced_aggregations.sql) | [Link](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Advanced_aggregations.sql) | [Video](https://www.linkedin.com/posts/hegazy-ahmed_sql-mysqlserver-analysis-activity-7236908944193929216-pUp-?utm_source=share&utm_medium=member_desktop)

These queries aim to perform various analyses such as calculating totals, averages, rankings, and detecting duplicates or deviations, making them valuable tools for data analysis and reporting.

**Insight**

- Find the total sales across all orders and by each product. Additionally, provide details such as order ID, order date, and sales.
- Rank each order based on their sales from highest to lowest, and provide details such as order ID and order date.
- Calculate the total sales using a sliding window of two following rows after the current row, and provide details such as order ID, order date, and sales.
- Calculate the total sales using a sliding window of two preceding rows before the current row, and provide details such as order ID, order date, and sales.
- Rank customers based on their total sales.
- Find the total number of orders and the total number of orders for each customer. Additionally, provide details such as order ID and order date.
- Check for null values by finding the total number of customers and the total number of scores for the customers. Additionally, provide all details of customers.
- Check whether the table Orders contains any duplicate rows by counting the primary key.
- Find the total sales across all orders and the total sales for each product. Additionally, provide details such as order ID and order date.
- Find the percentage contribution of each product's sales to the total sales.
- Find the average sales across all orders and the average sales for each product. Additionally, provide details such as order ID and order date.
- Find the average scores of customers. Additionally, provide details such as customer ID and last name.
- Find all orders where sales are higher than the average sales across all orders.
- Find the highest and lowest sales across all orders and for each product. Additionally, provide details such as order ID and order date.
- Calculate the deviation of each sale from both the minimum and maximum sales amounts.
- Show the employees who have the highest salaries.
- Calculate the moving average of sales for each product over time, including only the next order.








### [Advanced Ranking Window Use Cases](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Ranking_Windows.sql)  | [link](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Ranking_Windows.sql) 

**Insights**

- Orders are ranked based on their sales from highest to lowest.

- A unique rank is assigned to each order.

- Ties are allowed, so orders with identical sales receive the same rank.

- Ranks are assigned with no gaps in the case of ties.

- Analyze top performers to guide targeted marketing efforts.

- Identify the highest sales for each product to focus on the best-selling products.

- Identify underperformers to help manage risks and optimize strategies.

- Find the two customers with the lowest total sales to identify potential churn risks.

- Assign new IDs to the rows in the orders archive table.

- This helps uniquely identify rows in the archive.

- Identify and remove duplicate rows in the Orders Archive.

- Retain only the first occurrence of each unique row.






  


### [SQL Views ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Views.sql)

**Tasks :**

- Find the running total of sales for each month.
- update the view.
- Provide a view that combine details from orders, products , customers, and employees.
- provide a view for the EU Sales team that combines details from all tables and excludes data related to the USA.









### [Comprehensive Guide to SQL Server Indexing and Optimization Techniques](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Overall%20Indexes.sql)

**Index Types and Use Cases**
- Heap Tables: Suitable for staging tables without any indexes; offers fast inserts but poor query performance.
- Clustered Index: Best for OLTP systems and primary keys or date columns; organizes data rows physically.
- Non-Clustered Index: Ideal for filtering and join operations; works on non-primary key columns.
- Columnstore Index: Optimal for OLAP workloads, analytics, and aggregations with efficient storage and fast read performance.
- Filtered Index: Targets specific subsets of data for improved efficiency.
- Unique Index: Ensures data uniqueness while boosting read performance.

**Index Management**
- Creating, Monitoring, and Dropping Indexes:
- The script demonstrates creating clustered, non-clustered, columnstore, and unique indexes.
- It includes commands to monitor index usage, fragmentation, and identify missing or duplicate indexes using system DMVs.
- Example: Use sp_helpindex or sys.dm_db_index_usage_stats for real-time index insights.

**Query Performance Enhancement**
- Execution Plan Analysis:
Differentiates between Table Scan, Index Scan, and Index Seek, highlighting the importance of proper indexing.
Encourages examining actual execution plans to validate index usage and identify bottlenecks.
- SQL Hints:
Demonstrates controlling query behavior (e.g., forcing join algorithms, index usage) for performance fine-tuning.

**Maintenance and Optimization**
- Statistics Updates:
Ensures accurate query optimization by scheduling statistics updates.
Covers manual updates for specific tables, indexes, or entire databases using sp_updatestats.
- Fragmentation Management:
Recommends actions based on fragmentation percentage: Reorganize (<30%) or Rebuild (>30%).
Commands to evaluate and address fragmentation using sys.dm_db_index_physical_stats.

**Advanced Scenarios**
- Columnstore Index Benefits:
Showcases significant space savings and aggregation performance improvements for analytics.
- Join Optimization:
Explores join algorithms (Nested Loops, Hash Match, Merge Join) with guidance on their best use cases.











### [Advanced Common Table Expression(CTE)](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/CTE_Commen%20Table%20Expressions.sql)

**Tasks :**
- Find the total sales per cusomer.
- Find the last order date per customer.
-  Rank Customers based on total sales per customer.
-  Segment customers based on their total sales.
-  Generate a sequence of Numbers from 1 to 20.
-   Show the employee hierarchy by displaying each employee's level within the organization.









### [Handle Nulls with Null Function](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Null%20Function.sql)

**Tasks**
- The Difference amoung Null , Empty string and Blank spaces. 
- Find the average scores of the customers.
- Display the full name of customrs in a single field and add 10 bouns pints to each customer's score.
- Sort the customrs from lowest to highest scores, with nulls appearing last.
- Find  the sales price for each order by dividing the sales by quantity.
- Identify the customres who have no scores.
- List all customres who have score.
- list all details for customers who have not placed any orders.








### [Advanced Sub Query](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/SubQuery.sql)

**Tasks**
- Find the products that have a price higher than the average price of all products.
- Rank the customerss based on their total amount of sales.
- Show the product IDs , names, prices and total number of orderes.
- Show all customer detailss and find the total orders for each customer.
- Find the products that have a price highter than the average price of all products.
- Show the details of orders made by customers in Germany.
- Show the details of orders made by customers  who are not from Germany.
- Find female employees whose salaries are greater than the salaries of any male employees.
- Find female employees whose salaries are greater than the salaries of All male employees.
-  Show all customer details and find the total oreders for each customer.
-  Show the details of orders made by customers in Germany.




  


### [Case When Statement ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Case.sql)
**Task**
- Generate a report showing the total sales for each category.
- Retrieve employee details with gender displayed as full text.
- Find average scores of customers and treat Nulls as 0 and additional provide details such customrID and Lastname.
- count how many times each customers has made an order with sales greater than 30.






### [Using Partition Function](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Partition%20Function.sql)
This project showcases my ability to implement table partitioning in SQL Server to optimize query performance and manage large datasets effectively.

**Steps**
- I defined a partition function named partitionByYear(Date) to segment data into partitions based on year boundaries. I also verified the existing partition functions using sys.partition_functions.
- I created four filegroups (FG_2023, FG_2024, FG_2025, FG_2026) to logically organize the partitions and checked the created filegroups using sys.filegroups.
- To store partition data, I added secondary .ndf files (P_2023.ndf, P_2024.ndf, P_2025.ndf, P_2026.ndf) to the respective filegroups. The details of the files and their paths were verified using a query joining sys.filegroups and sys.master_files.
- I set up a partition scheme named schemePartitionByYear to map partitions to the appropriate filegroups according to the defined partition function. I validated the scheme and its mappings using sys.partition_schemes.
- I set up a partition scheme named schemePartitionByYear to map partitions to the appropriate filegroups according to the defined partition function. I validated the scheme and its mappings using sys.partition_schemes.
- I verified that records were correctly stored in their respective partitions by querying partition-specific metadata from system views like sys.partitions and sys.filegroups.
- Finally, I compared the performance of the partitioned table with a non-partitioned version (Sales.Orders_Nopartittioned). By querying data based on OrderDate, I demonstrated the efficiency of partitioned queries, where fewer rows were read compared to non-partitioned queries.












### [Union Use Cases](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Union.sql)


**Tasks:**
- Combine the data from employees and customers into one table.
- Combine the data from employees and customers into one table including duplicates,
- Find employees who are not customers at the same time.
- Find empoyees who are also customers.
- combine all orders into one report without duplicates.


  







### [Date Use Case ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Date%20Function.sql)

**Tasks:**
- Extaract the year , month, day, week and quarter from Creationtime.
- zoom in and zoom out the level of details out by using DateTrunce.
- Extaract the last day of the months and first day. 
- how many orders were placed each year ?
-  how many orders were placed each month ?
-  Data Filtering : Show all orders that were placed during the month of february.
-  Formating, Cast, Convert, Detediff and Isdate .
-  Show Creation Time using the following format: Day web jan Q12025 12:34:56 PM.
- Task extract 10  days , add 3 months and add2 years from orderdate.
-  Calculate the age of employees.
-  Find the average shipping duration in days for each month.
-  Find the number of days between each order and previous oreder.









### [Exploratory Data Analysis Using SQL and Tableau](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/breaking%20_down%20_%20bteween_%20Female_%20and_%20Male.sql) | [Link ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/breaking%20_down%20_%20bteween_%20Female_%20and_%20Male.sql) | [Link to VIZ ](https://public.tableau.com/app/profile/ahmed.hegazy/viz/BreakdownbetweenMandF/Dashboard1)
  
  
   **KPIs**
   Objective: Analyze employee demographics and salary data to provide insights into gender distribution, departmental employment trends, and salary comparisons.

Key Responsibilities:

- Employee Gender Breakdown (1990-Present):

- Analyzed employee distribution by gender over the years using SQL.
  Departmental Gender Comparison:

- Compared male and female employee distribution across departments over time.
  Average Salary Analysis by Gender:

- Calculated and compared average salaries of male and female employees by department.
 Salary Range Analysis (50,000 - 90,000):

- Developed a stored procedure to analyze average salaries within a specified range by gender and department.
  Technologies Used: SQL, Stored Procedures

Outcome: Provided valuable insights into gender distribution, departmental trends, and salary equity, aiding HR in informed decision-making.








### [This SQL script focuses on generating key insights and KPIs for a food delivery system ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Food.sql) | [Link to Project](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Food.sql)
 
- Create Datasets 
- This SQL script focuses on generating key insights and KPIs for a food delivery system:
- Total Rolls Ordered: A total count of all rolls ordered is calculated, providing insight into overall demand.
- Unique Customers: The number of unique customers is identified, highlighting the customer base size.
- Driver Performance: The script calculates the number of successful orders delivered by each driver, excluding cancellations. This serves as a KPI for driver efficiency.
- Roll Type Popularity: It tracks the number of each type of roll (vegetarian vs. non-vegetarian) delivered, offering insights into customer preferences.
- Order Volume per Customer: The analysis includes how many rolls each customer ordered, segmented by roll type, which is key for understanding customer behavior.
- Max Rolls in a Single Order: The script identifies the maximum number of rolls delivered in a single order, a KPI that may indicate peak order sizes.
- Data Quality and Cleaning: The script accounts for null, NaN, and whitespace in the dataset, ensuring clean data before analysis.
- Database and Table Creation: It sets up the necessary tables (driver, ingredients, rolls, etc.) and populates them with sample data to support the analysis.
- Order Success Rate: By filtering out canceled orders, the script provides a clear view of successful deliveries, which is critical for assessing overall service reliability.
- Customer Preferences and Customization: Analyzes data on items not included or extra items requested in orders, offering insights into customer preferences for roll customization.











