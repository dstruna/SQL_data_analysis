/*
-------------------------------------------------
Question 7:
In which State is the highest price for a product for each subcategory?

What we see:


Conclusions:

-------------------------------------------------
*/
WITH RankedPrices AS(
SELECT
	Sub_Category,
	State,
	ROUND(Sales/Quantity, 2) AS Product_price,
	
	RANK() OVER(
		PARTITION BY Sub_Category
		ORDER BY Sales/Quantity DESC
	) AS Rank_in
	FROM SampleSuperstore
	WHERE Quantity > 0 
)		
SELECT
	DISTINCT Sub_Category,
	State,
	ROUND(Product_price, 2) AS Highest_unit_price

FROM RankedPrices
WHERE Rank_in = 1
ORDER BY Highest_unit_price desc;
