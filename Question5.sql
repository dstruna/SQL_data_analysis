/*
-------------------------------------------------
Question 5:
Does a higher discount reduce profit?

What we see:


Conclusions:

-------------------------------------------------
*/
SELECT	
	Sub_Category,
	ROUND((SUM(Discount * Sales)/SUM(Sales)),2)*100 AS AVG_Discount,	--Average discount weighted by sales. 
	ROUND((SUM(Profit)/SUM(Quantity)),2) AS AVG_Profit

FROM SampleSuperstore
WHERE Sales > 0 AND Quantity > 0
GROUP BY Sub_Category
ORDER BY AVG_Discount DESC;