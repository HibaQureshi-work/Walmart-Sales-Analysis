Select * from Walmart_DA

--Total Revenue by Branch and Category
SELECT Branch, Category, SUM(Total_Revenue) AS Total_Revenue
FROM Walmart_DA
GROUP BY Branch, Category;

--Total Revenue per Payment Method
SELECT Payment_Method, SUM(Total_Revenue) AS Total_Revenue
FROM sales
GROUP BY Payment_Method;

--Profit by Month and Year
SELECT Year, Month, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Year, Month;



--Average Profit Margin by City
SELECT City, AVG(Profit_Margin) AS Avg_Profit_Margin
FROM sales
GROUP BY City;

--Total Sales Quantity by Day of the Week
SELECT DayOfWeek, SUM(Quantity) AS Total_Quantity_Sold
FROM sales
GROUP BY DayOfWeek;

--Total revenue by Category
select Category,sum(Total_Revenue) as Total_Revenue from Walmart_Cleaned_Data
group by Category
order by Total_Revenue desc

--Average rating by category
select Category, AVG(Rating) as Avg_Rating from Walmart_Cleaned_Data
group by Category
order by Avg_Rating desc

--sum of profit by category
select Category, sum(Profit) as Total_Profit from Walmart_Cleaned_Data
group by Category
order by Total_Profit desc

--sum of Total Revenue by payment method
select Payment_Method, sum(Total_Revenue) as Total_Revenue from Walmart_Cleaned_Data
group by Payment_Method
order by Total_Revenue desc

--sum of profit by payment method
select Payment_Method, sum(Profit) as Total_Profit from Walmart_Cleaned_Data
group by Payment_Method
order by Total_Profit desc

--sum of Total_Revenue by city
select City, sum(Total_Revenue) as Total_Revenue from Walmart_DA
group by City
order by Total_Revenue desc

--Avg Rating by City
select City, avg(Rating) as Average_Rating from Walmart_DA
group by City


--Profit and Total_revenue over year and month
SELECT Year, Month, SUM(Total_Revenue) AS Total_Revenue, SUM(Profit) AS Total_Profit
FROM Walmart_DA
GROUP BY Year, Month
ORDER BY Year, Month

-- sum of profit by Branch
SELECT Branch, SUM(Profit) AS Total_Profit
FROM Walmart_DA
GROUP BY Branch
ORDER BY Total_Profit DESC;

--unique payment method
select distinct Payment_Method from Walmart_DA

--Top 3 payment method
SELECT Top 3 Payment_Method, COUNT(*) AS Count
FROM Walmart_DA
GROUP BY Payment_Method
ORDER BY Count DESC

--Top 5 Category
SELECT Top 5 Category, COUNT(*) AS Count
FROM Walmart_DA
GROUP BY Category
ORDER BY Count DESC

select * from Walmart_DA
where Year = 2019

--Top 5 City
SELECT Top 5 City, COUNT(*) AS Count
FROM Walmart_DA
GROUP BY City
ORDER BY Count DESC

--sum of Total_Revenue by Top 5 city
select Top 5 City, sum(Total_Revenue) as Total_Revenue from Walmart_DA
group by City
order by Total_Revenue desc

--View for Total Revenue by Branch and Category
CREATE VIEW Total_Revenue_By_Branch_Category AS
SELECT Branch, Category, SUM(Total_Revenue) AS Total_Revenue
FROM sales
GROUP BY Branch, Category;

--View for Average Profit Margin by City
CREATE VIEW Avg_Profit_Margin_By_City AS
SELECT City, AVG(Profit_Margin) AS Avg_Profit_Margin
FROM sales
GROUP BY City;

--View for Profit by Month and Year
CREATE VIEW Profit_By_Month_Year AS
SELECT Year, Month, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Year, Month;
