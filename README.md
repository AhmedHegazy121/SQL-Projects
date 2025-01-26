

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
### [📚 Featured Projects](#featured-projects)

### [🚀 Streamlining Restaurant Data Management with SQL] (https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Rs)

### 🚀 Key Features  

### 1️⃣ **Customer Relationship Management**  
- 📝 Registered customers for the loyalty program.  
- 🔄 Updated and managed customer profiles seamlessly.  
- 🎉 Automated RSVP tracking for special events like anniversaries.  

### 2️⃣ **Menu and Ordering Insights**  
- 📊 Created detailed reports of menu items categorized and sorted by price.  
- 🛒 Tracked delivery orders with total cost calculations.  

### 3️⃣ **Reservation Optimization**  
- 📅 Simplified reservation management, including last-minute changes or cancellations.  

### 4️⃣ **Engaging Top Customers**  
- 🎁 Identified frequent delivery customers for targeted promotional campaigns.  

### 5️⃣ **Customization & Favorites**  
- ❤️ Captured customer preferences (e.g., favorite dishes) for personalized dining experiences.  


## 💡 Insights  

### 🔑 What I Learned  
- Efficient **data management** in SQL.  
- Building **scalable solutions** for real-world scenarios.  
- Extracting **actionable insights** to drive decision-making.  

### 📈 Results  
- Enhanced operational workflows.  
- Improved customer satisfaction through personalization.  
- Data-driven strategies for targeted marketing campaigns.  



### 🛠️ Technologies Used  

- **SQL**: Query optimization, data manipulation, and reporting.  
- **Database Management**: Tables, joins, and updates for seamless data operations.  
- **Analytical Insights**: Aggregations, filters, and ranking for actionable reports.  



### 🎯 How to Use  
1. Clone the repository.  
2. Import the SQL scripts into your database system.  
3. Explore the reports and adapt them to your restaurant's needs.  

### This project is part of my portfolio, demonstrating my:  
- 💾 Expertise in database management.  
- 🔍 Attention to detail in query optimization.  
- 📊 Ability to deliver meaningful insights for the food service industry.  


### [SQL Stored Procedure: Customer Summary](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/SQL%20Stored%20Procedure.sql)


###  Overview
This script provides a stored procedure to calculate customer statistics and sales data for a specified country, with additional features for data cleanup and error handling.

### Features
1. **Core Functionality**
   - Calculates the total number of customers and their average score for a specified country.
   - Allows dynamic country selection using parameters (`@Country`), with a default value set to `'USA'`.

2. **Data Cleanup**
   - Updates null scores in the `Score` column to `0` for accurate aggregations.

3. **Advanced Features**
   - Performs multiple operations, including aggregating customer data and calculating total orders and sales.
   - Utilizes variables to store intermediate results for enhanced output control.
   - Implements control flow (`IF EXISTS`) to handle conditional data processing.

4. **Error Handling**
   - Uses `TRY...CATCH` blocks to gracefully handle errors.
   - Provides detailed error messages, including the error number, message, line, and procedure name.

5. **Execution Flexibility**
   - Accepts an optional parameter for the country name:
     ```sql
     EXEC GetCustomerSummary; -- Default country: USA
     EXEC GetCustomerSummary @Country = 'Germany'; -- Specify another country
     ```

6. **Best Practices**
   - Avoids code repetition by using parameters and dynamic inputs.
   - Ensures robust handling of null values and potential errors.

###  Usage Examples

-- Execute the procedure with the default country
EXEC GetCustomerSummary;

-- Execute the procedure for a specific country
EXEC GetCustomerSummary @Country = 'Germany';
EXEC GetCustomerSummary @Country = 'USA';


### [SQL Query Performance Best Practices](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/30%20SQL%20Tips%20and%20Tricks.sql) 
**[Link to Project](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/30%20SQL%20Tips%20and%20Tricks.sql)**

This guide provides best practices for optimizing SQL queries to improve performance, readability, and maintainability. 

###  Best Practices

### 1. Column Selection
- **Avoid `SELECT *`:** Specify the columns explicitly to minimize unnecessary data retrieval.

### 2. Minimize Expensive Operations
- **Reduce `DISTINCT` and `ORDER BY` Usage:** Use only when absolutely necessary as they can impact performance.
- **Limit Rows for Exploration:** Use `TOP` (SQL Server) or `LIMIT` (MySQL/PostgreSQL) to retrieve a subset of rows for debugging or exploration.

### 3. Indexing
- **Index Frequently Used Columns:** Create nonclustered indexes for columns often used in `WHERE` clauses.
- **Index Join Columns:** Ensure columns in `ON` clauses are indexed for faster joins.

### 4. Efficient Filtering
- **Avoid Functions on Columns in Filters:** Use raw comparisons or patterns like `LIKE`, `BETWEEN`, or direct operators to prevent performance hits.
- **Avoid Leading Wildcards:** Use patterns like `'prefix%'` instead of `'%pattern%'` to leverage indexes.
- **Filter Early:** Apply filters as soon as possible to reduce the number of rows processed in subsequent steps.

### 5. Query Structure
- **Use `IN` for Multiple Conditions:** Replace multiple `OR` conditions with `IN` for better readability and performance.
- **Prefer Inner Joins:** They generally perform faster than outer joins.
- **Use Explicit Joins:** Prefer ANSI-style joins (`INNER JOIN`, `LEFT JOIN`) over implicit joins for clarity and better optimization.

### 6. Join Optimization
- **Aggregate Before Joining Large Tables:** Pre-aggregate data to reduce rows processed in joins.
- **Optimize Nested Loops:** Use SQL hints like `OPTION (HASH JOIN)` in SQL Server for large-to-small table joins.

### 7. Query Simplification
- **Use UNION ALL Instead of UNION:** If duplicates are acceptable, choose `UNION ALL` for better performance.
- **Choose JOIN or EXISTS Over IN:** Use `EXISTS` for large tables to avoid redundant row processing.
- **Avoid Redundant Logic:** Simplify queries using `CASE` statements and window functions.

### 8. Data Types
- **Use Appropriate Data Types:** Avoid using `TEXT` and `VARCHAR(MAX)` when smaller sizes suffice.
- **Limit Data Type Sizes:** Use precise lengths for `VARCHAR` and other data types to conserve memory and storage.

### 9. Performance Enhancements
- **Use Columnstore Indexes for Aggregation:** They significantly enhance performance for large datasets.
- **Pre-Aggregate for Reporting:** Store summarized data in separate tables for faster query execution.

###  Example

-- Avoid SELECT *
SELECT first_name, last_name, email
FROM customers
WHERE country = 'USA';

-- Use Indexed Columns
CREATE NONCLUSTERED INDEX idx_customers_country ON customers (country);

-- Use UNION ALL Instead of UNION
SELECT product_name FROM products_a
UNION ALL
SELECT product_name FROM products_b;

----
 
### [SQL Value Window Functions | LEAD, LAG, FIRST_VALUE, LAST_VALUE](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/SQL%20Value%20Window%20Functions.sql)


###  1. Analyze Month-over-Month (MoM) Performance
- Find the percentage change in sales between the current and previous month.

###  2. Analyze Customer Loyalty
- Rank customers based on the average number of days between orders.

###  3. Find Lowest and Highest Sales
- Determine the lowest and highest sales for each product.

###  4. Compare to Extremes
- Assess how well a value is performing relative to the extremes.

----



### [Advanced SQL Aggregate Window Functions ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Advanced_aggregations.sql) | [Link](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Advanced_aggregations.sql) | [Video](https://www.linkedin.com/posts/hegazy-ahmed_sql-mysqlserver-analysis-activity-7236908944193929216-pUp-?utm_source=share&utm_medium=member_desktop)

These queries aim to perform various analyses such as calculating totals, averages, rankings, and detecting duplicates or deviations, making them valuable tools for data analysis and reporting.


####  Insights

###  Sales Analysis
- Find the total sales across all orders and by each product. Additionally, provide details such as order ID, order date, and sales.
- Rank each order based on their sales from highest to lowest, and provide details such as order ID and order date.
- Calculate the total sales using a sliding window of two following rows after the current row, and provide details such as order ID, order date, and sales.
- Calculate the total sales using a sliding window of two preceding rows before the current row, and provide details such as order ID, order date, and sales.
- Find the total sales across all orders and the total sales for each product. Additionally, provide details such as order ID and order date.
- Find the percentage contribution of each product's sales to the total sales.
- Find the average sales across all orders and the average sales for each product. Additionally, provide details such as order ID and order date.
- Find all orders where sales are higher than the average sales across all orders.
- Find the highest and lowest sales across all orders and for each product. Additionally, provide details such as order ID and order date.
- Calculate the deviation of each sale from both the minimum and maximum sales amounts.
- Calculate the moving average of sales for each product over time, including only the next order.

###  Customer Analysis
- Rank customers based on their total sales.
- Find the total number of orders and the total number of orders for each customer. Additionally, provide details such as order ID and order date.
- Find the average scores of customers. Additionally, provide details such as customer ID and last name.

### Data Quality Checks
- Check for null values by finding the total number of customers and the total number of scores for the customers. Additionally, provide all details of customers.
- Check whether the table `Orders` contains any duplicate rows by counting the primary key.

###  Employee Analysis
- Show the employees who have the highest salaries.




----
 



### [Advanced Ranking Window Use Cases](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Ranking_Windows.sql)  | [link](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Ranking_Windows.sql) 



### Insights

###  Ranking Analysis
- Orders are ranked based on their sales from highest to lowest.
- A unique rank is assigned to each order.
- Ties are allowed, so orders with identical sales receive the same rank.
- Ranks are assigned with no gaps in the case of ties.
- Analyze top performers to guide targeted marketing efforts.

### Product Performance
- Identify the highest sales for each product to focus on the best-selling products.
- Identify underperformers to help manage risks and optimize strategies.

###  Customer Analysis
- Find the two customers with the lowest total sales to identify potential churn risks.

### Data Management
- Assign new IDs to the rows in the orders archive table to uniquely identify rows in the archive.
- Identify and remove duplicate rows in the Orders Archive while retaining only the first occurrence of each unique row.






----
 
  


### [SQL Views ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Views.sql)

### Insights

###  Sales Analysis
- Find the running total of sales for each month.

###  Data Updates
- Update the view to reflect the latest data changes.

###  Combined Data Views
- Provide a view that combines details from Orders, Products, Customers, and Employees.

###  Regional Analysis
- Provide a view for the EU Sales team that combines details from all tables and excludes data related to the USA.




----
 



### [Comprehensive Guide to SQL Server Indexing and Optimization Techniques](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Overall%20Indexes.sql)

### Index Types and Use Cases

- **Heap Tables**: Suitable for staging tables without any indexes; offers fast inserts but poor query performance.
- **Clustered Index**: Best for OLTP systems and primary keys or date columns; organizes data rows physically.
- **Non-Clustered Index**: Ideal for filtering and join operations; works on non-primary key columns.
- **Columnstore Index**: Optimal for OLAP workloads, analytics, and aggregations with efficient storage and fast read performance.
- **Filtered Index**: Targets specific subsets of data for improved efficiency.
- **Unique Index**: Ensures data uniqueness while boosting read performance.

### Index Management

#### Creating, Monitoring, and Dropping Indexes
- Demonstrates creating clustered, non-clustered, columnstore, and unique indexes.
- Includes commands to monitor index usage, fragmentation, and identify missing or duplicate indexes using system DMVs.
  - Example: Use `sp_helpindex` or `sys.dm_db_index_usage_stats` for real-time index insights.

### Query Performance Enhancement

#### Execution Plan Analysis
- Differentiates between Table Scan, Index Scan, and Index Seek, highlighting the importance of proper indexing.
- Encourages examining actual execution plans to validate index usage and identify bottlenecks.

#### SQL Hints
- Demonstrates controlling query behavior (e.g., forcing join algorithms, index usage) for performance fine-tuning.

### Maintenance and Optimization

#### Statistics Updates
- Ensures accurate query optimization by scheduling statistics updates.
- Covers manual updates for specific tables, indexes, or entire databases using `sp_updatestats`.

#### Fragmentation Management
- Recommends actions based on fragmentation percentage: Reorganize (<30%) or Rebuild (>30%).
- Commands to evaluate and address fragmentation using `sys.dm_db_index_physical_stats`.

### Advanced Scenarios

#### Columnstore Index Benefits
- Showcases significant space savings and aggregation performance improvements for analytics.

#### Join Optimization
- Explores join algorithms (Nested Loops, Hash Match, Merge Join) with guidance on their best use cases.




### [Advanced Common Table Expression(CTE)](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/CTE_Commen%20Table%20Expressions.sql)

**Tasks :**
- Find the total sales per cusomer.
- Find the last order date per customer.
-  Rank Customers based on total sales per customer.
-  Segment customers based on their total sales.
-  Generate a sequence of Numbers from 1 to 20.
-   Show the employee hierarchy by displaying each employee's level within the organization.






----
 


### [Handle Nulls with Null Function](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Null%20Function.sql)

### Tasks

#### The Difference Among Null, Empty String, and Blank Spaces
- **Null**: Represents a missing or undefined value in a database.
- **Empty String**: A string with no characters, represented as `""`.
- **Blank Spaces**: A string containing one or more space characters, represented as `" "`.

#### Find the Average Scores of the Customers
- Calculate the average of all customer scores to analyze overall performance.

#### Display the Full Name of Customers in a Single Field and Add 10 Bonus Points to Each Customer's Score
- Concatenate the first and last names of customers into a full name.
- Add a fixed bonus of 10 points to each customer's existing score.

#### Sort the Customers from Lowest to Highest Scores, with Nulls Appearing Last
- Sort customer scores in ascending order, ensuring customers with null scores are placed last.

#### Find the Sales Price for Each Order by Dividing the Sales by Quantity
- Calculate the unit price for each order by dividing the total sales by the quantity ordered.

#### Identify the Customers Who Have No Scores
- Find customers who have no assigned score in the database.

#### List All Customers Who Have Scores
- Retrieve a list of all customers who have a score assigned.

#### List All Details for Customers Who Have Not Placed Any Orders
- Find and display the full details of customers who have not placed any orders in the system.




----
 



### [Advanced Sub Query](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/SubQuery.sql)

### Tasks

#### Find the Products That Have a Price Higher Than the Average Price of All Products
- Identify products with a price greater than the average price across all products in the database.

#### Rank the Customers Based on Their Total Amount of Sales
- Rank customers according to the total sales amount they have contributed.

#### Show the Product IDs, Names, Prices, and Total Number of Orders
- Display details including product ID, name, price, and the total number of orders for each product.

#### Show All Customer Details and Find the Total Orders for Each Customer
- Retrieve all customer details and calculate the total number of orders placed by each customer.

#### Show the Details of Orders Made by Customers in Germany
- Retrieve all order details made by customers located in Germany.

#### Show the Details of Orders Made by Customers Who Are Not From Germany
- Retrieve all order details made by customers who are not located in Germany.

#### Find Female Employees Whose Salaries Are Greater Than the Salaries of Any Male Employees
- Identify female employees whose salaries exceed the salary of any male employee in the organization.

#### Find Female Employees Whose Salaries Are Greater Than the Salaries of All Male Employees
- Identify female employees whose salaries are greater than the salaries of all male employees in the organization.

#### Show All Customer Details and Find the Total Orders for Each Customer
- Retrieve all customer details along with the total number of orders they have placed.

#### Show the Details of Orders Made by Customers in Germany
- Retrieve all details for orders made by customers in Germany.




----
 
  


### [Case When Statement ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Case.sql)

### Task

#### Generate a Report Showing the Total Sales for Each Category
- Calculate and display the total sales for each product category.

#### Retrieve Employee Details with Gender Displayed as Full Text
- Retrieve employee details with gender displayed as 'Male' or 'Female' instead of codes or abbreviations.

#### Find Average Scores of Customers and Treat Nulls as 0, and Provide Details Such as CustomerID and Lastname
- Calculate the average score for each customer, treating Null values as 0, and display the customer details such as CustomerID and Lastname.

#### Count How Many Times Each Customer Has Made an Order with Sales Greater Than 30
- Count the number of times each customer has placed an order with a sales amount greater than 30.




----
 


### [Using Partition Function](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Partition%20Function.sql)
This project showcases my ability to implement table partitioning in SQL Server to optimize query performance and manage large datasets effectively.

### Steps

#### 1. Defined Partition Function
- I defined a partition function named `partitionByYear(Date)` to segment data into partitions based on year boundaries.
- I verified the existing partition functions using `sys.partition_functions`.

#### 2. Created Filegroups
- I created four filegroups: `FG_2023`, `FG_2024`, `FG_2025`, and `FG_2026` to logically organize the partitions.
- I checked the created filegroups using `sys.filegroups`.

#### 3. Added Secondary .ndf Files
- To store partition data, I added secondary `.ndf` files: `P_2023.ndf`, `P_2024.ndf`, `P_2025.ndf`, and `P_2026.ndf` to the respective filegroups.
- The details of the files and their paths were verified using a query joining `sys.filegroups` and `sys.master_files`.

#### 4. Set Up Partition Scheme
- I set up a partition scheme named `schemePartitionByYear` to map partitions to the appropriate filegroups according to the defined partition function.
- I validated the scheme and its mappings using `sys.partition_schemes`.

#### 5. Verified Data Storage in Partitions
- I verified that records were correctly stored in their respective partitions by querying partition-specific metadata from system views like `sys.partitions` and `sys.filegroups`.

#### 6. Compared Performance
- Finally, I compared the performance of the partitioned table with a non-partitioned version (`Sales.Orders_Nopartittioned`).
- By querying data based on `OrderDate`, I demonstrated the efficiency of partitioned queries, where fewer rows were read compared to non-partitioned queries.







----
 




### [Union Use Cases](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Union.sql)


**Tasks:**
- Combine the data from employees and customers into one table.
- Combine the data from employees and customers into one table including duplicates,
- Find employees who are not customers at the same time.
- Find empoyees who are also customers.
- combine all orders into one report without duplicates.


  


----
 




### [Date Use Case ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Date%20Function.sql)

### Tasks:

#### 1. Combine the Data from Employees and Customers into One Table
- Merge employee and customer data into a single table, ensuring proper relationships between the two sets of data.

#### 2. Combine the Data from Employees and Customers into One Table Including Duplicates
- Merge employee and customer data into one table, but retain duplicate entries if present.

#### 3. Find Employees Who Are Not Customers at the Same Time
- Identify employees who do not appear as customers in the dataset.

#### 4. Find Employees Who Are Also Customers
- Identify employees who are also listed as customers in the dataset.

#### 5. Combine All Orders into One Report Without Duplicates
- Merge all orders into a single report, ensuring that duplicates are removed to show only unique orders.






----
 



### [Exploratory Data Analysis Using SQL and Tableau](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/breaking%20_down%20_%20bteween_%20Female_%20and_%20Male.sql) | [Link ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/breaking%20_down%20_%20bteween_%20Female_%20and_%20Male.sql) | [Link to VIZ ](https://public.tableau.com/app/profile/ahmed.hegazy/viz/BreakdownbetweenMandF/Dashboard1)
  
  
   **KPIs**
   Objective: Analyze employee demographics and salary data to provide insights into gender distribution, departmental employment trends, and salary comparisons.

### Key Responsibilities:

#### 1. Employee Gender Breakdown (1990-Present)
- Analyzed employee distribution by gender over the years using SQL to track trends.

#### 2. Departmental Gender Comparison
- Compared male and female employee distribution across different departments over time to assess diversity.

#### 3. Average Salary Analysis by Gender
- Calculated and compared average salaries of male and female employees by department to evaluate gender-based salary differences.

#### 4. Salary Range Analysis (50,000 - 90,000)
- Developed a stored procedure to analyze average salaries within a specified range (50,000 - 90,000) by gender and department, helping HR target specific salary bands.

### Technologies Used:
- SQL, Stored Procedures

### Outcome:
- Provided valuable insights into gender distribution, departmental trends, and salary equity, aiding HR in informed decision-making.






----
 


### [This SQL script focuses on generating key insights and KPIs for a food delivery system ](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Food.sql) | [Link to Project](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Food.sql)
 


This SQL script generates key insights and KPIs to analyze a food delivery system's performance. The analysis focuses on orders, drivers, customer behavior, and data quality.

###  Key Insights and KPIs:

### 1. **Total Rolls Ordered**
- A total count of all rolls ordered is calculated, providing insights into overall demand and order volume.

### 2. **Unique Customers**
- The number of unique customers is identified to determine the size of the customer base.

### 3. **Driver Performance**
- The script calculates the number of successful orders delivered by each driver, excluding cancellations. This serves as a KPI for driver efficiency.

### 4. **Roll Type Popularity**
- Tracks the number of each type of roll (vegetarian vs. non-vegetarian) delivered, offering insights into customer preferences.

### 5. **Order Volume per Customer**
- Analyzes how many rolls each customer ordered, segmented by roll type, to understand customer behavior.

### 6. **Max Rolls in a Single Order**
- Identifies the maximum number of rolls delivered in a single order, a KPI that may indicate peak order sizes.

### 7. **Data Quality and Cleaning**
- The script accounts for null, NaN, and whitespace in the dataset, ensuring clean data before analysis.

### 8. **Database and Table Creation**
- Sets up the necessary tables (driver, ingredients, rolls, etc.) and populates them with sample data to support the analysis.

### 9. **Order Success Rate**
- Filters out canceled orders to provide a clear view of successful deliveries, which is critical for assessing overall service reliability.

### 10. **Customer Preferences and Customization**
- Analyzes data on items not included or extra items requested in orders, offering insights into customer preferences for roll customization.

### Technologies and Tools Used:
- SQL (MySQL, PostgreSQL, SQL Server)
- Data Quality and Cleaning Techniques
- Database Design and Schema Creation

###  Outcome:
This script provides key performance indicators for the food delivery system, helping businesses understand demand, customer behavior, driver performance, and service reliability. By analyzing these insights, businesses can make data-driven decisions to optimize operations, improve customer experience, and boost performance.



 ### [Data Cleaning and Transformation on NashvilleHouse Table](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/Clean%20Date.sql)

### NashvilleHouse Data Cleaning and Transformation

This document outlines the steps performed to clean and transform the `NashvilleHouse` table, ensuring the data is standardized, missing values are handled, and unnecessary columns are removed for optimization.
###  Key Data Cleaning and Transformation Tasks

### 1. **Standardizing SaleDate Format**
- The `SaleDate` column was standardized to a consistent date format.
- A new column, `SaleDateconverted`, was created to store the converted date values, ensuring uniformity across the dataset.

### 2. **Handling Missing Property Address Values**
- Missing `PropertyAddress` values were filled by joining the `NashvilleHouse` table with another source using the `ParcelID` to populate the missing addresses, improving data completeness.

### 3. **Splitting Address Components**
- The `PropertyAddress` and `OwnerAddress` columns were split into separate components: `Address`, `City`, and `State`.
- New columns were created for each component, providing better granularity for address-related analysis.

### 4. **Updating SoldAsVacant Column**
- The values in the `SoldAsVacant` column were updated from `'y'`/`'n'` to `'yes'`/`'no'` for better readability and standardization.

### 5. **Removing Duplicate Rows**
- Duplicate rows based on key columns were identified and removed using the `ROW_NUMBER()` function, ensuring only unique rows remained in the table.

### 6. **Dropping Unnecessary Columns**
- Columns such as `OwnerAddress`, `TaxDistrict`, and `SaleDate` were dropped to streamline the table and reduce unnecessary data.

###  Outcome
These transformations resulted in a cleaner, more standardized dataset that is easier to work with, ensuring improved accuracy for analysis and reporting. The changes optimize the table structure by removing redundant and unnecessary data, making it more efficient for further processing.

###  Technologies Used:
- SQL (MySQL, PostgreSQL, SQL Server)
- Data Transformation Techniques



---

### [COVID Data Analysis: Key Insights and Transformations](https://github.com/AhmedHegazy121/portfolioProjects/blob/main/COVID2019.sql)



This document outlines the steps I performed to analyze COVID-19 data, including data transformation, calculation of key metrics, and insights on infection rates, death rates, and vaccination coverage across different countries and continents.

###  Key Analysis Tasks

### 1. **Data Transformation**
- The `total_deaths` and `total_cases` columns were transformed into integer types to ensure data consistency and facilitate numerical operations.
  
### 2. **Percentage of Population Infected**
- Calculated the percentage of the population infected by dividing the total number of cases by the total population for each country. This provides a better understanding of how widespread the infection was in each region.

### 3. **Identification of High Infection and Death Rates**
- Identified countries and continents with the highest infection and death rates relative to the population. This insight helps pinpoint regions that may need more targeted interventions.

### 4. **Global Aggregation**
- Aggregated global COVID-19 data, including total cases and deaths, to provide an overview of the global pandemic's scope. This helps in understanding the worldwide impact of COVID-19.

### 5. **Population and Vaccination Analysis**
- Examined the relationship between population size and vaccination coverage by joining the `CovidDeaths` and `CovidVaccinations` tables. This analysis highlights regions where vaccination efforts may need to be improved or intensified.

### 6. **Vaccination Rate Calculation**
- Calculated the vaccination rate for each location, which is the percentage of the population that has received at least one dose of the vaccine. This provides insights into vaccination progress and gaps.

### 7. **View Creation for Future Visualizations**
- Created a view to store vaccination data for future visualizations and reports. The view simplifies accessing vaccination-related data and enables quick insights in dashboards.

###  Outcome
The analysis provided valuable insights into the global COVID-19 situation, highlighting regions with high infection and death rates, as well as areas with lower vaccination coverage. By transforming the data and calculating key metrics, I was able to offer a comprehensive view of the pandemic's impact on various countries and continents.

### Technologies Used:
- SQL (MySQL, PostgreSQL, SQL Server)
- Data Transformation and Aggregation
- Data Joining and Analysis Techniques

###  Future Work:
- Visualizations based on the created view for vaccination rates.
- Further exploration of vaccination coverage relative to cases and deaths in each country.








