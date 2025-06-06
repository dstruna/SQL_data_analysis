/*
Expolanation:
- Margain ratio = Profit margain =  How much profit you earn per $1 of sales.
---------------------------------------------------------------------------
Question 4.0:
What is profit per unit in each sub_category?
What we see:
- Copiers made huge average profit per unit comapared to others.
- 3 out of 17 items made loss on average per unit sold.

---------------------------------------------------------------------------
Question 4.1:
What is profit margain?
What we see:
- Paper, Envelopes and Labels has best margain around 42%-44%.
- Tables are loss-maker with margain of -9%.
- Fasteners are low profit maker, but have high margain ratio.

---------------------------------------------------------------------------
Conclusions overall:
- Overall Copiers were least sold item, but made the most profit per unit. Which means is high-value product, high margain.
- Low-cost consumables like Paper, Envelopes, Labels have low absolute profit but very efficient margins, they are good for bulk sales.
- Some subcategories are actually losing money, especially tables and bookcases, something needs to be done here.

-------------------------------------------------
*/

SELECT
	Sub_Category,
	ROUND(SUM(Sales),2) AS Total_sales,														--Show Total sales
	ROUND(SUM(Profit),2) AS Total_profit,													--Show Total profit
	SUM(Quantity) AS Sold_items,															--Show Total quantity
	ROUND(SUM(Sales)/SUM(Quantity), 2) AS Average_sale_price,								--Show Absolute average price per one unit
	ROUND(SUM(Profit)/SUM(Quantity), 2) AS Average_profit_per_unit,							--Show Absolute average Profit per one unit sold
	CAST(ROUND(SUM(Profit)/SUM(Sales), 2) * 100 AS nvarchar) + '%' AS Margain_ratio			--Show Margain ratio in %

FROM Retail_supermarket.dbo.SampleSuperstore
WHERE Quantity > 0 AND Sales > 0
GROUP BY Sub_Category
ORDER BY Average_profit_per_unit DESC;