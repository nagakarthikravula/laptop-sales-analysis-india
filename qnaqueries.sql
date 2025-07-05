--Question 1: Age Distribution of Customers
select age as Age,Count(*) as Purchase_Count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` group by age order by age;

