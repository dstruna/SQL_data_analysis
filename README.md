# 📊 SQL Data Analysis Project

## 🧠 Project Summary
This project is part of my journey to become a Data Analyst. I got the data on Kaggle. I downloaded the data and did a bulk import into MSSQL. I used SQL to analyze a dataset of Sample Superstore. Then I made a visualization from the queries in Tableau Public.

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
6. Does a higher discount reduce profit?
7. Which shipping mode is the most used and most profitable?
8. In which state is highest price for item in each sub_category?

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

![Q1](https://github.com/user-attachments/assets/aff8f981-ca43-46bb-9e09-09a63031ef6d)

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

![Q2](https://github.com/user-attachments/assets/0ee070cb-afd6-415a-8a2c-a16f5567b1bb)


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

![Q3](https://github.com/user-attachments/assets/28b49a5d-d00e-4d0b-83fd-b89015327935)



Visualization in Tableau: 
[Click here](https://public.tableau.com/app/profile/denis.struna/viz/Question3_17492334172120/Q3?publish=yes)


## 📂 Project Structure
See folders for SQL queries, raw data, results, and visuals.


