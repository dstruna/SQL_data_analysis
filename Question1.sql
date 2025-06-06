/*
-------------------------------------------------
Question 1:
Which state has the highest sales?

What we see:
- New York has the highest Total Profit
- Wyoming has lowest Total Profit
- Texas made a profit loss

Conclusions:
- 10 out of 49 States made loss
- They need maybe better marketing
-------------------------------------------------
*/
SELECT										--You can add that it finds you the top 10 States with the most profit											
		 [State]							--Just add TOP(10) after SELECT
		,ROUND(SUM([Profit]), 2) AS Total_Profit

FROM [Retail_supermarket].[dbo].[SampleSuperstore]

 
 GROUP BY [State]
 ORDER BY Total_Profit DESC;
