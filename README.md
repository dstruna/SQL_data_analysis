# 📊 SQL Data Analysis Project

## 🧠 Project Summary
This project is part of my journey to become a Data Analyst. I got the dataset on Kaggle. I downloaded the data and did a bulk import into MSSQL. I used SQL to analyze a dataset of Sample Superstore. Then I made a visualization from the queries in Tableau Public.

## 🔧 Tools
- MSSQL
- Tableau (for final visualization)

## Data Source
Sample Superstore: [Download here](https://www.kaggle.com/datasets/roopacalistus/superstore).

The dataset contains sales details of different stores of a supermarket chain that has multiple stores in different parts of the US.

## 📌 Objectives
- Get data
- Import data to MSSQL
- Answer specific business questions using SQL
- Visualize key insights

## 📈 Key questions that i answered
1. Which state has the highest sales?
2. Which sub_category has the highest profit?
3. Which states are generating losses?
4. What is profit per unit in each sub_category?
5. What is Margain ratio per each sub_category?
6. Which shipping mode is the most used and most profitable?
7. In which state is highest price for item in each sub_category?

# 📈 Data Analysis results
## 1. Which state has the highest sales?
SQL query:
```sql
SELECT
   [State],
   ROUND(SUM([Profit]), 2) AS Total_Profit

FROM [Retail_supermarket].[dbo].[SampleSuperstore]
GROUP BY [State]
ORDER BY Total_Profit DESC;
```
Visualization:

[![Q1](Q1.png)](Q1.png)

Visualization in Tableau: 
[Click here](https://public.tableau.com/app/profile/denis.struna/viz/Question1_17492323532630/Q1)

## 2. Which sub_category has the highest profit?
SQL query:
```sql
SELECT
	[Sub_Category],
	ROUND(SUM([Profit]), 2) AS Total_Profit
FROM [Retail_supermarket].[dbo].[SampleSuperstore]
GROUP BY [Sub_Category]
ORDER BY Total_Profit DESC;
```
Visualization:

[![Q2](Q2.png)](Q2.png)

Visualization in Tableau: 
[Click here](https://public.tableau.com/app/profile/denis.struna/viz/Question2_17492332552080/Q2?publish=yes)

## 3. Which states are generating losses?
SQL query:
```sql
SELECT
	[State],
	ROUND(SUM([Profit]), 2) AS Total_Profit
FROM [Retail_supermarket].[dbo].[SampleSuperstore]
GROUP BY [State]
HAVING SUM([Profit]) < 0
ORDER BY Total_Profit;
```
Visualization:

[![Q3](Q3.png)](Q3.png)
Visualization in Tableau: 
[Click here](https://public.tableau.com/app/profile/denis.struna/viz/Question3_17492334172120/Q3?publish=yes)


## Two questions:
4. What is profit per unit in each sub_category?
5. What is Margain ratio per each sub_category?

SQL query:
```sql
SELECT
	Sub_Category,
	ROUND(SUM(Sales),2) AS Total_sales,							--Show Total sales
	ROUND(SUM(Profit),2) AS Total_profit,							--Show Total profit
	SUM(Quantity) AS Sold_items,								--Show Total quantity
	ROUND(SUM(Sales)/SUM(Quantity), 2) AS Average_sale_price,				--Show Absolute average price per one unit
	ROUND(SUM(Profit)/SUM(Quantity), 2) AS Average_profit_per_unit,				--Show Absolute average Profit per one unit sold
	CAST(ROUND(SUM(Profit)/SUM(Sales), 2) * 100 AS nvarchar) + '%' AS Margain_ratio		--Show Margain ratio in %

FROM Retail_supermarket.dbo.SampleSuperstore
WHERE Quantity > 0 AND Sales > 0
GROUP BY Sub_Category
ORDER BY Average_profit_per_unit DESC;
```
Visualization:

[![Q4](Q4.png)](Q4.png)

Visualization in Tableau: 
[Click here](https://public.tableau.com/app/profile/denis.struna/viz/Question4_17492338293470/Q4?publish=yes)


## 6. Which shipping mode is the most used and most profitable?
SQL query:
```sql




```




## 📂 Project Structure
See folders for SQL queries, raw data, results, and visuals.


