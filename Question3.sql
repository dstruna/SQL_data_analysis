/*
-------------------------------------------------
Question 3:
Which states are generating losses?

What we see:
- Texas made biggest loss
- Oregon made smallest loss

Conclusions:
- There are states where profit is not made

-------------------------------------------------
*/
SELECT
		[State],
		ROUND(SUM([Profit]), 2) AS Total_Profit
	
FROM [Retail_supermarket].[dbo].[SampleSuperstore]
GROUP BY [State]
HAVING SUM([Profit]) < 0
ORDER BY Total_Profit;
