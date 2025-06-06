/*
-------------------------------------------------
Question 6.1:
Which shipping mode is the most used? 

What we see:
- The most used is Standard Class, the cheapest one. About 59%
- The least used is Same day. About 5%
-------------------------------------------------
Question 6.2:
Which shipping mode is the and most profitable?

What we see:
- The most profit made Standard Class. About 57%.
- The least profit made Same day. About 6%
-------------------------------------------------
Conclusions:
- Most profitable is standard class, because is by far the most used shipping method.
-------------------------------------------------
*/
SELECT
	Ship_Mode,
	COUNT(Ship_Mode) AS Number_of_each_shipping,
	CAST(ROUND(100 * COUNT(Ship_Mode)/SUM(COUNT(Ship_Mode)) OVER(), 2) AS nvarchar) + '%'  AS Share_of_total_shipping,
	ROUND(SUM(Profit), 2) AS Profit_per_shipping,
	CAST(ROUND(100*SUM(Profit)/SUM(SUM(Profit)) OVER(), 2) AS nvarchar) + '%' AS Share_of_total_profit
	
	
	FROM SampleSuperstore
	GROUP BY Ship_Mode
	ORDER BY Number_of_each_shipping DESC;
