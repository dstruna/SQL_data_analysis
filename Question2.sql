/*
-------------------------------------------------
Question 2:
Which sub_category has the highest profit?

What we see:
- Copiers were the best-selling items
- Tables made loss
- Surprisingly, Copiers are selling better then Phones

Conclusions:
- 3 out of 17 made loss
- In Category Furniture tables and bookcases made huge loss that makes Furniture least profitable category.
-------------------------------------------------
*/

SELECT										--You can add that it finds you the top 10 Sub_Category with the most profit											
		 [Sub_Category]						--Just add TOP(10) after SELECT
		,ROUND(SUM([Profit]), 2) AS Total_Profit

FROM [Retail_supermarket].[dbo].[SampleSuperstore]

 
 GROUP BY [Sub_Category]
 ORDER BY Total_Profit DESC;
